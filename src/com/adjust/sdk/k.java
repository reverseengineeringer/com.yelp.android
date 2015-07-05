package com.adjust.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class k
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private int k;
  private int l;
  private long m;
  private long n;
  private long o;
  private long p;
  private String q;
  private String r;
  private int s;
  private String t;
  private double u;
  private Map<String, String> v;
  private Map<String, String> w;
  
  public k(Context paramContext)
  {
    a = paramContext;
  }
  
  private void a(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    a(paramMap, paramString, Long.toString(paramLong));
  }
  
  private void a(Map<String, String> paramMap, String paramString, Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return;
    }
    if (paramBoolean.booleanValue()) {}
    for (int i1 = 1;; i1 = 0)
    {
      a(paramMap, paramString, i1);
      return;
    }
  }
  
  private void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return;
    }
    paramMap.put(paramString1, paramString2);
  }
  
  private void a(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2)
  {
    if (paramMap2 == null) {
      return;
    }
    a(paramMap1, paramString, Base64.encodeToString(new JSONObject(paramMap2).toString().getBytes(), 2));
  }
  
  private void b(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    a(paramMap, paramString, q.a(paramLong));
  }
  
  private void b(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2)
  {
    if (paramMap2 == null) {
      return;
    }
    a(paramMap1, paramString, new JSONObject(paramMap2).toString());
  }
  
  private void c(Map<String, String> paramMap)
  {
    a(paramMap, "event_count", s);
    a(paramMap, "event_token", t);
    a(paramMap, "params", v);
  }
  
  private void c(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    a(paramMap, paramString, (500L + paramLong) / 1000L);
  }
  
  private boolean g()
  {
    if (6 != t.length())
    {
      f.a().f(String.format("Malformed Event Token '%s'", new Object[] { t }));
      return false;
    }
    return true;
  }
  
  private ActivityPackage h()
  {
    ActivityPackage localActivityPackage = new ActivityPackage();
    localActivityPackage.setUserAgent(g);
    localActivityPackage.setClientSdk(h);
    return localActivityPackage;
  }
  
  private Map<String, String> i()
  {
    HashMap localHashMap = new HashMap();
    b(localHashMap, "created_at", m);
    a(localHashMap, "app_token", b);
    a(localHashMap, "mac_sha1", c);
    a(localHashMap, "mac_md5", d);
    a(localHashMap, "android_id", e);
    a(localHashMap, "android_uuid", i);
    a(localHashMap, "fb_id", f);
    a(localHashMap, "environment", j);
    a(localHashMap, "gps_adid", q.d(a));
    a(localHashMap, "tracking_enabled", Boolean.valueOf(q.e(a)));
    a(localHashMap, "session_count", k);
    a(localHashMap, "subsession_count", l);
    c(localHashMap, "session_length", n);
    c(localHashMap, "time_spent", o);
    return localHashMap;
  }
  
  private String j()
  {
    long l1 = Math.round(u * 10.0D);
    u = (l1 / 10.0D);
    return Long.toString(l1);
  }
  
  private String k()
  {
    return String.format(" '%s'", new Object[] { t });
  }
  
  private String l()
  {
    if (t != null) {
      return String.format(Locale.US, " (%.1f cent, '%s')", new Object[] { Double.valueOf(u), t });
    }
    return String.format(Locale.US, " (%.1f cent)", new Object[] { Double.valueOf(u) });
  }
  
  public void a(int paramInt)
  {
    k = paramInt;
  }
  
  public void a(long paramLong)
  {
    m = paramLong;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(Map<String, String> paramMap)
  {
    v = paramMap;
  }
  
  public boolean a()
  {
    if (t == null)
    {
      f.a().f("Missing Event Token");
      return false;
    }
    return g();
  }
  
  public void b(int paramInt)
  {
    l = paramInt;
  }
  
  public void b(long paramLong)
  {
    n = paramLong;
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public void b(Map<String, String> paramMap)
  {
    w = paramMap;
  }
  
  public boolean b()
  {
    if (u < 0.0D)
    {
      f.a().f(String.format(Locale.US, "Invalid amount %f", new Object[] { Double.valueOf(u) }));
      return false;
    }
    if (t == null) {
      return true;
    }
    return g();
  }
  
  public ActivityPackage c()
  {
    Map localMap = i();
    c(localMap, "last_interval", p);
    a(localMap, "default_tracker", q);
    a(localMap, "referrer", r);
    ActivityPackage localActivityPackage = h();
    localActivityPackage.setPath("/startup");
    localActivityPackage.setActivityKind(ActivityKind.SESSION);
    localActivityPackage.setSuffix("");
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public void c(int paramInt)
  {
    s = paramInt;
  }
  
  public void c(long paramLong)
  {
    o = paramLong;
  }
  
  public void c(String paramString)
  {
    d = paramString;
  }
  
  public ActivityPackage d()
  {
    Map localMap = i();
    c(localMap);
    ActivityPackage localActivityPackage = h();
    localActivityPackage.setPath("/event");
    localActivityPackage.setActivityKind(ActivityKind.EVENT);
    localActivityPackage.setSuffix(k());
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public void d(long paramLong)
  {
    p = paramLong;
  }
  
  public void d(String paramString)
  {
    e = paramString;
  }
  
  public ActivityPackage e()
  {
    Map localMap = i();
    c(localMap);
    a(localMap, "amount", j());
    ActivityPackage localActivityPackage = h();
    localActivityPackage.setPath("/revenue");
    localActivityPackage.setActivityKind(ActivityKind.REVENUE);
    localActivityPackage.setSuffix(l());
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public void e(String paramString)
  {
    i = paramString;
  }
  
  public ActivityPackage f()
  {
    Map localMap = i();
    b(localMap, "deeplink_parameters", w);
    ActivityPackage localActivityPackage = h();
    localActivityPackage.setPath("/reattribute");
    localActivityPackage.setActivityKind(ActivityKind.REATTRIBUTION);
    localActivityPackage.setSuffix("");
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public void f(String paramString)
  {
    f = paramString;
  }
  
  public void g(String paramString)
  {
    g = paramString;
  }
  
  public void h(String paramString)
  {
    h = paramString;
  }
  
  public void i(String paramString)
  {
    j = paramString;
  }
  
  public void j(String paramString)
  {
    q = paramString;
  }
  
  public void k(String paramString)
  {
    r = paramString;
  }
  
  public void l(String paramString)
  {
    t = paramString;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */