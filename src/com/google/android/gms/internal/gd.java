package com.google.android.gms.internal;

import android.os.Bundle;

@ey
public class gd
{
  private final Object mH = new Object();
  private final ga vL;
  private final String vO;
  private int wr;
  private int ws;
  
  gd(ga paramga, String paramString)
  {
    vL = paramga;
    vO = paramString;
  }
  
  public gd(String paramString)
  {
    this(ga.dc(), paramString);
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    synchronized (mH)
    {
      wr = paramInt1;
      ws = paramInt2;
      vL.a(vO, this);
      return;
    }
  }
  
  public Bundle toBundle()
  {
    synchronized (mH)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", wr);
      localBundle.putInt("pmnll", ws);
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */