package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class kt
  extends f<kt>
{
  private String a;
  private String b;
  private String c;
  private long d;
  
  public String a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    d = paramLong;
  }
  
  public void a(kt paramkt)
  {
    if (!TextUtils.isEmpty(a)) {
      paramkt.a(a);
    }
    if (!TextUtils.isEmpty(b)) {
      paramkt.b(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramkt.c(c);
    }
    if (d != 0L) {
      paramkt.a(d);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(String paramString)
  {
    c = paramString;
  }
  
  public long d()
  {
    return d;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("category", a);
    localHashMap.put("action", b);
    localHashMap.put("label", c);
    localHashMap.put("value", Long.valueOf(d));
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */