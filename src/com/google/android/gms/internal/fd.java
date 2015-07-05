package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.List;

@ey
public class fd
  extends gf
  implements gv.a
{
  private final cy lA;
  private final Context mContext;
  private final Object mH = new Object();
  private final gu mo;
  private cr qi;
  private final fc.a tA;
  private final fy.a tB;
  private boolean tC = false;
  private cp tD;
  private cv tE;
  private final Object tj = new Object();
  private fj tn;
  
  public fd(Context paramContext, fy.a parama, gu paramgu, cy paramcy, fc.a parama1)
  {
    mContext = paramContext;
    tB = parama;
    tn = vK;
    mo = paramgu;
    lA = paramcy;
    tA = parama1;
    qi = vE;
  }
  
  private void a(fh paramfh, long paramLong)
  {
    synchronized (tj)
    {
      tD = new cp(mContext, paramfh, lA, qi);
      tE = tD.a(paramLong, 60000L);
      switch (tE.qO)
      {
      default: 
        throw new fd.a("Unexpected mediation result: " + tE.qO, 0);
      }
    }
    throw new fd.a("No fill from any mediation ad networks.", 3);
  }
  
  private boolean c(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      mH.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new fd.a("Ad request cancelled.", -1);
    }
  }
  
  private void f(long paramLong)
  {
    gq.wR.post(new fd.3(this));
    h(paramLong);
  }
  
  private void h(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        throw new fd.a("Timed out waiting for WebView to finish loading.", 2);
      }
    } while (!tC);
  }
  
  public void a(gu arg1)
  {
    synchronized (mH)
    {
      gr.S("WebView finished loading.");
      tC = true;
      mH.notify();
      return;
    }
  }
  
  public void cx()
  {
    for (;;)
    {
      int i;
      long l;
      synchronized (mH)
      {
        gr.S("AdRendererBackgroundTask started.");
        Object localObject1 = tB.vJ;
        i = tB.errorCode;
        try
        {
          l = SystemClock.elapsedRealtime();
          if (tn.tW)
          {
            a((fh)localObject1, l);
            av localav = tL;
            gu localgu = mo;
            List localList1 = tn.qw;
            List localList2 = tn.qx;
            List localList3 = tn.tY;
            int j = tn.orientation;
            l = tn.qA;
            String str2 = tO;
            boolean bool = tn.tW;
            if (tE == null) {
              break label448;
            }
            localObject1 = tE.qP;
            if (tE == null) {
              break label454;
            }
            cz localcz = tE.qQ;
            if (tE == null) {
              break label431;
            }
            str1 = tE.qR;
            cr localcr = qi;
            if (tE == null) {
              break label442;
            }
            localct = tE.qS;
            localObject1 = new fy(localav, localgu, localList1, i, localList2, localList3, j, l, str2, bool, (cq)localObject1, localcz, str1, localcr, localct, tn.tX, tB.lS, tn.tV, tB.vG, tn.ua, tn.ub, tB.vD, null);
            gq.wR.post(new fd.2(this, (fy)localObject1));
            return;
          }
          if (!tn.uc) {
            break label390;
          }
          g(l);
          continue;
          if (i != -1) {
            break label398;
          }
        }
        catch (fd.a locala)
        {
          i = locala.getErrorCode();
          if (i == 3) {}
        }
        gr.U(locala.getMessage());
        if (tn != null) {
          break label409;
        }
        tn = new fj(i);
        gq.wR.post(new fd.1(this));
      }
      label390:
      f(l);
      continue;
      label398:
      gr.W(locala.getMessage());
      continue;
      label409:
      tn = new fj(i, tn.qA);
      continue;
      label431:
      String str1 = AdMobAdapter.class.getName();
      continue;
      label442:
      ct localct = null;
      continue;
      label448:
      Object localObject3 = null;
      continue;
      label454:
      Object localObject4 = null;
    }
  }
  
  protected void g(long paramLong)
  {
    Object localObject = mo.ac();
    int j;
    if (oq) {
      j = mContext.getResources().getDisplayMetrics().widthPixels;
    }
    for (int i = mContext.getResources().getDisplayMetrics().heightPixels;; i = heightPixels)
    {
      localObject = new fb(this, mo, j, i);
      gq.wR.post(new fd.4(this, (fb)localObject));
      h(paramLong);
      if (!((fb)localObject).cH()) {
        break;
      }
      gr.S("Ad-Network indicated no fill with passback URL.");
      throw new fd.a("AdNetwork sent passback url", 3);
      j = widthPixels;
    }
    if (!((fb)localObject).cI()) {
      throw new fd.a("AdNetwork timed out", 2);
    }
  }
  
  public void onStop()
  {
    synchronized (tj)
    {
      mo.stopLoading();
      gi.a(mo);
      if (tD != null) {
        tD.cancel();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */