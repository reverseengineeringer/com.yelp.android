package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.h;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;

@fv
public final class ay
  extends ba.a
{
  private final h a;
  private final String b;
  private final String c;
  
  public ay(h paramh, String paramString1, String paramString2)
  {
    a = paramh;
    b = paramString1;
    c = paramString2;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(c paramc)
  {
    if (paramc == null) {
      return;
    }
    a.b((View)d.a(paramc));
  }
  
  public String b()
  {
    return c;
  }
  
  public void c()
  {
    a.z();
  }
  
  public void d()
  {
    a.A();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */