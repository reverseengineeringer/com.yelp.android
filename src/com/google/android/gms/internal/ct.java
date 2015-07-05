package com.google.android.gms.internal;

@ey
public final class ct
  extends da.a
{
  private final Object mH = new Object();
  private cv.a qD;
  private cs qE;
  
  public void a(cs paramcs)
  {
    synchronized (mH)
    {
      qE = paramcs;
      return;
    }
  }
  
  public void a(cv.a parama)
  {
    synchronized (mH)
    {
      qD = parama;
      return;
    }
  }
  
  public void onAdClicked()
  {
    synchronized (mH)
    {
      if (qE != null) {
        qE.ai();
      }
      return;
    }
  }
  
  public void onAdClosed()
  {
    synchronized (mH)
    {
      if (qE != null) {
        qE.aj();
      }
      return;
    }
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    for (;;)
    {
      synchronized (mH)
      {
        if (qD != null)
        {
          if (paramInt == 3)
          {
            paramInt = 1;
            qD.k(paramInt);
            qD = null;
          }
        }
        else {
          return;
        }
      }
      paramInt = 2;
    }
  }
  
  public void onAdLeftApplication()
  {
    synchronized (mH)
    {
      if (qE != null) {
        qE.ak();
      }
      return;
    }
  }
  
  public void onAdLoaded()
  {
    synchronized (mH)
    {
      if (qD != null)
      {
        qD.k(0);
        qD = null;
        return;
      }
      if (qE != null) {
        qE.am();
      }
      return;
    }
  }
  
  public void onAdOpened()
  {
    synchronized (mH)
    {
      if (qE != null) {
        qE.al();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */