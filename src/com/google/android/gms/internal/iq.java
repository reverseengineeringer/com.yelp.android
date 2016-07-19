package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class iq
  extends f<iq>
{
  private String a;
  private String b;
  private String c;
  private String d;
  private boolean e;
  private String f;
  private boolean g;
  private double h;
  
  public String a()
  {
    return a;
  }
  
  public void a(double paramDouble)
  {
    if ((paramDouble >= 0.0D) && (paramDouble <= 100.0D)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Sample rate must be between 0% and 100%");
      h = paramDouble;
      return;
    }
  }
  
  public void a(iq paramiq)
  {
    if (!TextUtils.isEmpty(a)) {
      paramiq.a(a);
    }
    if (!TextUtils.isEmpty(b)) {
      paramiq.b(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramiq.c(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramiq.d(d);
    }
    if (e) {
      paramiq.a(true);
    }
    if (!TextUtils.isEmpty(f)) {
      paramiq.e(f);
    }
    if (g) {
      paramiq.b(g);
    }
    if (h != 0.0D) {
      paramiq.a(h);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public String b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    g = paramBoolean;
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
  
  public void e(String paramString)
  {
    f = paramString;
  }
  
  public boolean e()
  {
    return e;
  }
  
  public String f()
  {
    return f;
  }
  
  public boolean g()
  {
    return g;
  }
  
  public double h()
  {
    return h;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("hitType", a);
    localHashMap.put("clientId", b);
    localHashMap.put("userId", c);
    localHashMap.put("androidAdId", d);
    localHashMap.put("AdTargetingEnabled", Boolean.valueOf(e));
    localHashMap.put("sessionControl", f);
    localHashMap.put("nonInteraction", Boolean.valueOf(g));
    localHashMap.put("sampleRate", Double.valueOf(h));
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */