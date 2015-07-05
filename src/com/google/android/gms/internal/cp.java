package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;
import java.util.List;

@ey
public final class cp
{
  private final cy lA;
  private final Context mContext;
  private final Object mH = new Object();
  private final fh qh;
  private final cr qi;
  private boolean qj = false;
  private cu qk;
  
  public cp(Context paramContext, fh paramfh, cy paramcy, cr paramcr)
  {
    mContext = paramContext;
    qh = paramfh;
    lA = paramcy;
    qi = paramcr;
  }
  
  public cv a(long paramLong1, long paramLong2)
  {
    gr.S("Starting mediation.");
    Object localObject2 = qi.qu.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      cq localcq = (cq)((Iterator)localObject2).next();
      gr.U("Trying mediation network: " + qo);
      Iterator localIterator = qp.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        synchronized (mH)
        {
          if (qj)
          {
            localObject2 = new cv(-1);
            return (cv)localObject2;
          }
          qk = new cu(mContext, str, lA, qi, localcq, qh.tL, qh.lS, qh.lO);
          ??? = qk.b(paramLong1, paramLong2);
          if (qO == 0)
          {
            gr.S("Adapter succeeded.");
            return (cv)???;
          }
        }
        if (qQ != null) {
          gq.wR.post(new cp.1(this, (cv)???));
        }
      }
    }
    return new cv(1);
  }
  
  public void cancel()
  {
    synchronized (mH)
    {
      qj = true;
      if (qk != null) {
        qk.cancel();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */