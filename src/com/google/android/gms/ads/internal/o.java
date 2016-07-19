package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.ag.a;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;

@fv
public class o
  extends ag.a
{
  private static final Object a = new Object();
  private static o b;
  private final Object c;
  private boolean d;
  private float e;
  
  public static o b()
  {
    synchronized (a)
    {
      o localo = b;
      return localo;
    }
  }
  
  public void a()
  {
    synchronized (a)
    {
      if (d)
      {
        gz.d("Mobile ads is initialized already.");
        return;
      }
      d = true;
      return;
    }
  }
  
  public void a(float paramFloat)
  {
    synchronized (c)
    {
      e = paramFloat;
      return;
    }
  }
  
  public float c()
  {
    synchronized (c)
    {
      float f = e;
      return f;
    }
  }
  
  public boolean d()
  {
    for (;;)
    {
      synchronized (c)
      {
        if (e >= 0.0F)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */