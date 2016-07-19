package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class kx
  extends f<kx>
{
  public String a;
  public long b;
  public String c;
  public String d;
  
  public String a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(kx paramkx)
  {
    if (!TextUtils.isEmpty(a)) {
      paramkx.a(a);
    }
    if (b != 0L) {
      paramkx.a(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramkx.b(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramkx.c(d);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public long b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(String paramString)
  {
    d = paramString;
  }
  
  public String d()
  {
    return d;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("variableName", a);
    localHashMap.put("timeInMillis", Long.valueOf(b));
    localHashMap.put("category", c);
    localHashMap.put("label", d);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */