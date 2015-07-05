package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class fa
  extends gf
  implements fe.a
{
  private final Context mContext;
  private final Object mH = new Object();
  private cr qi;
  private final ez.a ti;
  private final Object tj = new Object();
  private final fh.a tk;
  private final k tl;
  private gf tm;
  private fj tn;
  
  public fa(Context paramContext, fh.a parama, k paramk, ez.a parama1)
  {
    ti = parama1;
    mContext = paramContext;
    tk = parama;
    tl = paramk;
  }
  
  private ay a(fh paramfh)
  {
    if (tn.tZ == null) {
      throw new fa.a("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = tn.tZ.split("x");
    if (localObject.length != 2) {
      throw new fa.a("Could not parse the ad size from the ad response: " + tn.tZ, 0);
    }
    for (;;)
    {
      int i;
      ay localay;
      try
      {
        int m = Integer.parseInt(localObject[0]);
        int n = Integer.parseInt(localObject[1]);
        localObject = lS.or;
        int i1 = localObject.length;
        i = 0;
        if (i >= i1) {
          break;
        }
        localay = localObject[i];
        float f = mContext.getResources().getDisplayMetrics().density;
        if (width == -1)
        {
          j = (int)(widthPixels / f);
          if (height != -2) {
            break label253;
          }
          k = (int)(heightPixels / f);
          if ((m != j) || (n != k)) {
            break label263;
          }
          return new ay(localay, lS.or);
        }
      }
      catch (NumberFormatException paramfh)
      {
        throw new fa.a("Could not parse the ad size from the ad response: " + tn.tZ, 0);
      }
      int j = width;
      continue;
      label253:
      int k = height;
      continue;
      label263:
      i += 1;
    }
    throw new fa.a("The ad size from the ad response was not one of the requested sizes: " + tn.tZ, 0);
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
      throw new fa.a("Ad request cancelled.", -1);
    }
  }
  
  private void cE()
  {
    if (tn.errorCode == -3) {}
    do
    {
      return;
      if (TextUtils.isEmpty(tn.tU)) {
        throw new fa.a("No fill from ad server.", 3);
      }
      ga.a(mContext, tn.tT);
    } while (!tn.tW);
    try
    {
      qi = new cr(tn.tU);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new fa.a("Could not parse mediation config: " + tn.tU, 0);
    }
  }
  
  private void e(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        throw new fa.a("Timed out waiting for ad response.", 2);
      }
    } while (tn == null);
    synchronized (tj)
    {
      tm = null;
      if ((tn.errorCode != -2) && (tn.errorCode != -3)) {
        throw new fa.a("There was a problem getting an ad response. ErrorCode: " + tn.errorCode, tn.errorCode);
      }
    }
  }
  
  private void t(boolean paramBoolean)
  {
    ga.dc().x(paramBoolean);
    an localan = ga.dc().l(mContext);
    if ((localan != null) && (!localan.isAlive()))
    {
      gr.S("start fetching content...");
      localan.ba();
    }
  }
  
  public void a(fj paramfj)
  {
    synchronized (mH)
    {
      gr.S("Received ad response.");
      tn = paramfj;
      mH.notify();
      return;
    }
  }
  
  public void cx()
  {
    for (;;)
    {
      int i;
      long l2;
      long l1;
      synchronized (mH)
      {
        gr.S("AdLoaderBackgroundTask started.");
        Object localObject1 = tl.C().a(mContext);
        fh localfh = new fh(tk, (String)localObject1);
        i = -2;
        l2 = -1L;
        l1 = l2;
        long l3;
        try
        {
          l3 = SystemClock.elapsedRealtime();
          l1 = l2;
          gf localgf = fe.a(mContext, localfh, this);
          l1 = l2;
          localObject1 = tj;
          l1 = l2;
          try
          {
            tm = localgf;
            if (tm != null) {
              continue;
            }
            throw new fa.a("Could not start the ad request service.", 0);
          }
          finally
          {
            l1 = l2;
          }
          i = locala1.getErrorCode();
        }
        catch (fa.a locala1)
        {
          localObject1 = null;
        }
        if ((i == 3) || (i == -1))
        {
          gr.U(locala1.getMessage());
          if (tn != null) {
            break label366;
          }
          tn = new fj(i);
          gq.wR.post(new fa.1(this));
          boolean bool = TextUtils.isEmpty(tn.ue);
          if (bool) {
            break label398;
          }
        }
        try
        {
          localJSONObject = new JSONObject(tn.ue);
          localObject1 = new fy.a(localfh, tn, qi, (ay)localObject1, i, l1, tn.ua, localJSONObject);
          gq.wR.post(new fa.2(this, (fy.a)localObject1));
          return;
        }
        catch (Exception localException)
        {
          JSONObject localJSONObject;
          gr.b("Error parsing the JSON for Active View.", localException);
        }
        l1 = l2;
        e(l3);
        l1 = l2;
        l2 = SystemClock.elapsedRealtime();
        l1 = l2;
        cE();
        l1 = l2;
        if (lS.or == null) {
          break label412;
        }
        l1 = l2;
        localObject1 = a(localfh);
        try
        {
          t(tn.uh);
          l1 = l2;
        }
        catch (fa.a locala2)
        {
          Object localObject5;
          l1 = l2;
        }
        gr.W(localJSONObject.getMessage());
      }
      label366:
      tn = new fj(i, tn.qA);
      continue;
      label398:
      localObject5 = null;
      continue;
      continue;
      label412:
      Object localObject3 = null;
    }
  }
  
  public void onStop()
  {
    synchronized (tj)
    {
      if (tm != null) {
        tm.cancel();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */