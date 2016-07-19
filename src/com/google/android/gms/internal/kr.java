package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class kr
  extends f<kr>
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  private String f;
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(kr paramkr)
  {
    if (a != 0) {
      paramkr.a(a);
    }
    if (b != 0) {
      paramkr.b(b);
    }
    if (c != 0) {
      paramkr.c(c);
    }
    if (d != 0) {
      paramkr.d(d);
    }
    if (e != 0) {
      paramkr.e(e);
    }
    if (!TextUtils.isEmpty(f)) {
      paramkr.a(f);
    }
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  public int b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
  }
  
  public int c()
  {
    return c;
  }
  
  public void c(int paramInt)
  {
    c = paramInt;
  }
  
  public int d()
  {
    return d;
  }
  
  public void d(int paramInt)
  {
    d = paramInt;
  }
  
  public int e()
  {
    return e;
  }
  
  public void e(int paramInt)
  {
    e = paramInt;
  }
  
  public String f()
  {
    return f;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("language", f);
    localHashMap.put("screenColors", Integer.valueOf(a));
    localHashMap.put("screenWidth", Integer.valueOf(b));
    localHashMap.put("screenHeight", Integer.valueOf(c));
    localHashMap.put("viewportWidth", Integer.valueOf(d));
    localHashMap.put("viewportHeight", Integer.valueOf(e));
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */