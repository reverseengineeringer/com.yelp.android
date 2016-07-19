package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.e;

class ae
  implements e
{
  private int a = 2;
  private boolean b;
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
    if (!b)
    {
      Log.i((String)ak.c.a(), "Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag." + (String)ak.c.a() + " DEBUG");
      b = true;
    }
  }
  
  public void a(String paramString) {}
  
  public void b(String paramString) {}
  
  public void c(String paramString) {}
  
  public void d(String paramString) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */