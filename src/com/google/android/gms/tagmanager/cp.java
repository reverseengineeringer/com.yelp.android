package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.j;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class cp
  implements o.e
{
  private String aqI;
  private final String aqm;
  private bg<c.j> asC;
  private r asD;
  private final ScheduledExecutorService asF;
  private final cp.a asG;
  private ScheduledFuture<?> asH;
  private boolean mClosed;
  private final Context mContext;
  
  public cp(Context paramContext, String paramString, r paramr)
  {
    this(paramContext, paramString, paramr, null, null);
  }
  
  cp(Context paramContext, String paramString, r paramr, cp.b paramb, cp.a parama)
  {
    asD = paramr;
    mContext = paramContext;
    aqm = paramString;
    paramContext = paramb;
    if (paramb == null) {
      paramContext = new cp.1(this);
    }
    asF = paramContext.qh();
    if (parama == null)
    {
      asG = new cp.2(this);
      return;
    }
    asG = parama;
  }
  
  private co cM(String paramString)
  {
    co localco = asG.a(asD);
    localco.a(asC);
    localco.cw(aqI);
    localco.cL(paramString);
    return localco;
  }
  
  private void qg()
  {
    try
    {
      if (mClosed) {
        throw new IllegalStateException("called method after closed");
      }
    }
    finally {}
  }
  
  public void a(bg<c.j> parambg)
  {
    try
    {
      qg();
      asC = parambg;
      return;
    }
    finally
    {
      parambg = finally;
      throw parambg;
    }
  }
  
  public void cw(String paramString)
  {
    try
    {
      qg();
      aqI = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void e(long paramLong, String paramString)
  {
    try
    {
      bh.V("loadAfterDelay: containerId=" + aqm + " delay=" + paramLong);
      qg();
      if (asC == null) {
        throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
      }
    }
    finally {}
    if (asH != null) {
      asH.cancel(false);
    }
    asH = asF.schedule(cM(paramString), paramLong, TimeUnit.MILLISECONDS);
  }
  
  public void release()
  {
    try
    {
      qg();
      if (asH != null) {
        asH.cancel(false);
      }
      asF.shutdown();
      mClosed = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */