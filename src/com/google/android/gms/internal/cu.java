package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.dynamic.e;

@ey
public final class cu
  implements cv.a
{
  private final cy lA;
  private final Context mContext;
  private final Object mH = new Object();
  private final av mw;
  private final String qF;
  private final long qG;
  private final cq qH;
  private final ay qI;
  private final gs qJ;
  private cz qK;
  private int qL = -2;
  
  public cu(Context paramContext, String paramString, cy paramcy, cr paramcr, cq paramcq, av paramav, ay paramay, gs paramgs)
  {
    mContext = paramContext;
    lA = paramcy;
    qH = paramcq;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      qF = bO();
      if (qv == -1L) {
        break label106;
      }
    }
    label106:
    for (long l = qv;; l = 10000L)
    {
      qG = l;
      mw = paramav;
      qI = paramay;
      qJ = paramgs;
      return;
      qF = paramString;
      break;
    }
  }
  
  private void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    for (;;)
    {
      if (qL != -2) {
        return;
      }
      b(paramLong1, paramLong2, paramLong3, paramLong4);
    }
  }
  
  private void a(ct paramct)
  {
    try
    {
      if (qJ.wU < 4100000)
      {
        if (qI.oq)
        {
          qK.a(e.k(mContext), mw, qH.qt, paramct);
          return;
        }
        qK.a(e.k(mContext), qI, mw, qH.qt, paramct);
        return;
      }
    }
    catch (RemoteException paramct)
    {
      gr.d("Could not request ad from mediation adapter.", paramct);
      k(5);
      return;
    }
    if (qI.oq)
    {
      qK.a(e.k(mContext), mw, qH.qt, qH.qn, paramct);
      return;
    }
    qK.a(e.k(mContext), qI, mw, qH.qt, qH.qn, paramct);
  }
  
  private void b(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    long l = SystemClock.elapsedRealtime();
    paramLong1 = paramLong2 - (l - paramLong1);
    paramLong2 = paramLong4 - (l - paramLong3);
    if ((paramLong1 <= 0L) || (paramLong2 <= 0L))
    {
      gr.U("Timed out waiting for adapter.");
      qL = 3;
      return;
    }
    try
    {
      mH.wait(Math.min(paramLong1, paramLong2));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      qL = -1;
    }
  }
  
  private String bO()
  {
    try
    {
      if (!TextUtils.isEmpty(qH.qr))
      {
        if (lA.y(qH.qr)) {
          return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (RemoteException localRemoteException)
    {
      gr.W("Fail to determine the custom event's version, assuming the old one.");
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private cz bP()
  {
    gr.U("Instantiating mediation adapter: " + qF);
    try
    {
      cz localcz = lA.x(qF);
      return localcz;
    }
    catch (RemoteException localRemoteException)
    {
      gr.a("Could not instantiate mediation adapter: " + qF, localRemoteException);
    }
    return null;
  }
  
  public cv b(long paramLong1, long paramLong2)
  {
    synchronized (mH)
    {
      long l = SystemClock.elapsedRealtime();
      Object localObject2 = new ct();
      gq.wR.post(new cu.1(this, (ct)localObject2));
      a(l, qG, paramLong1, paramLong2);
      localObject2 = new cv(qH, qK, qF, (ct)localObject2, qL);
      return (cv)localObject2;
    }
  }
  
  public void cancel()
  {
    synchronized (mH)
    {
      try
      {
        if (qK != null) {
          qK.destroy();
        }
        qL = -1;
        mH.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          gr.d("Could not destroy mediation adapter.", localRemoteException);
        }
      }
    }
  }
  
  public void k(int paramInt)
  {
    synchronized (mH)
    {
      qL = paramInt;
      mH.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */