package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.internal.ld;
import com.google.android.gms.internal.lf;

class a
{
  private static a aqa;
  private static Object xO = new Object();
  private volatile long apW = 900000L;
  private volatile long apX = 30000L;
  private volatile long apY;
  private a.a apZ = new a.1(this);
  private volatile boolean mClosed = false;
  private final Context mContext;
  private final ld wb;
  private final Thread wu;
  private volatile AdvertisingIdClient.Info xQ;
  
  private a(Context paramContext)
  {
    this(paramContext, null, lf.jdMethod_if());
  }
  
  a(Context paramContext, a.a parama, ld paramld)
  {
    wb = paramld;
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      if (parama != null) {
        apZ = parama;
      }
      wu = new Thread(new a.2(this));
      return;
    }
  }
  
  static a W(Context paramContext)
  {
    if (aqa == null) {}
    synchronized (xO)
    {
      if (aqa == null)
      {
        aqa = new a(paramContext);
        aqa.start();
      }
      return aqa;
    }
  }
  
  private void pb()
  {
    Process.setThreadPriority(10);
    while (!mClosed) {
      try
      {
        xQ = apZ.pd();
        Thread.sleep(apW);
      }
      catch (InterruptedException localInterruptedException)
      {
        bh.U("sleep interrupted in AdvertiserDataPoller thread; continuing");
      }
    }
  }
  
  private void pc()
  {
    if (wb.currentTimeMillis() - apY < apX) {
      return;
    }
    interrupt();
    apY = wb.currentTimeMillis();
  }
  
  void interrupt()
  {
    wu.interrupt();
  }
  
  public boolean isLimitAdTrackingEnabled()
  {
    pc();
    if (xQ == null) {
      return true;
    }
    return xQ.isLimitAdTrackingEnabled();
  }
  
  public String pa()
  {
    pc();
    if (xQ == null) {
      return null;
    }
    return xQ.getId();
  }
  
  void start()
  {
    wu.start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */