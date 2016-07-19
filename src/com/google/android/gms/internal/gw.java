package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.s;

@fv
public class gw
{
  private final Object a = new Object();
  private int b;
  private int c;
  private final gt d;
  private final String e;
  
  gw(gt paramgt, String paramString)
  {
    d = paramgt;
    e = paramString;
  }
  
  public gw(String paramString)
  {
    this(s.h(), paramString);
  }
  
  public Bundle a()
  {
    synchronized (a)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", b);
      localBundle.putInt("pmnll", c);
      return localBundle;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    synchronized (a)
    {
      b = paramInt1;
      c = paramInt2;
      d.a(e, this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */