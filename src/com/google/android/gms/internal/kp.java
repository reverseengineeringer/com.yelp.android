package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class kp
  extends f<kp>
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  public String a()
  {
    return a;
  }
  
  public void a(kp paramkp)
  {
    if (!TextUtils.isEmpty(a)) {
      paramkp.a(a);
    }
    if (!TextUtils.isEmpty(b)) {
      paramkp.b(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramkp.c(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramkp.d(d);
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
  
  public String d()
  {
    return d;
  }
  
  public void d(String paramString)
  {
    d = paramString;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appName", a);
    localHashMap.put("appVersion", b);
    localHashMap.put("appId", c);
    localHashMap.put("appInstallerId", d);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */