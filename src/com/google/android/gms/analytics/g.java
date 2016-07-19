package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.ag;
import com.google.android.gms.analytics.internal.e;
import com.google.android.gms.analytics.internal.m;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.o;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.s;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.analytics.internal.y;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kr;
import com.google.android.gms.measurement.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public class g
  extends r
{
  private boolean a;
  private final Map<String, String> b = new HashMap();
  private final Map<String, String> c = new HashMap();
  private final e d;
  private final a e;
  private b f;
  private m g;
  
  g(t paramt, String paramString, e parame)
  {
    super(paramt);
    if (paramString != null) {
      b.put("&tid", paramString);
    }
    b.put("useSecure", "1");
    b.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    if (parame == null) {}
    for (d = new e("tracking", n());; d = parame)
    {
      e = new a(paramt);
      return;
    }
  }
  
  static String a(Activity paramActivity)
  {
    zzx.zzz(paramActivity);
    paramActivity = paramActivity.getIntent();
    if (paramActivity == null) {}
    do
    {
      return null;
      paramActivity = paramActivity.getStringExtra("android.intent.extra.REFERRER_NAME");
    } while (TextUtils.isEmpty(paramActivity));
    return paramActivity;
  }
  
  private static void a(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    zzx.zzz(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = b(localEntry);
        if (str != null) {
          paramMap2.put(str, localEntry.getValue());
        }
      }
    }
  }
  
  private static boolean a(Map.Entry<String, String> paramEntry)
  {
    String str = (String)paramEntry.getKey();
    paramEntry = (String)paramEntry.getValue();
    return (str.startsWith("&")) && (str.length() >= 2);
  }
  
  private static String b(Map.Entry<String, String> paramEntry)
  {
    if (!a(paramEntry)) {
      return null;
    }
    return ((String)paramEntry.getKey()).substring(1);
  }
  
  private static void b(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    zzx.zzz(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = b(localEntry);
        if ((str != null) && (!paramMap2.containsKey(str))) {
          paramMap2.put(str, localEntry.getValue());
        }
      }
    }
  }
  
  private boolean c()
  {
    return f != null;
  }
  
  protected void a()
  {
    e.E();
    String str = v().c();
    if (str != null) {
      a("&an", str);
    }
    str = v().b();
    if (str != null) {
      a("&av", str);
    }
  }
  
  public void a(long paramLong)
  {
    e.a(1000L * paramLong);
  }
  
  public void a(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.isOpaque())) {}
    do
    {
      do
      {
        return;
        paramUri = paramUri.getQueryParameter("referrer");
      } while (TextUtils.isEmpty(paramUri));
      paramUri = Uri.parse("http://hostname/?" + paramUri);
      String str = paramUri.getQueryParameter("utm_id");
      if (str != null) {
        c.put("&ci", str);
      }
      str = paramUri.getQueryParameter("anid");
      if (str != null) {
        c.put("&anid", str);
      }
      str = paramUri.getQueryParameter("utm_campaign");
      if (str != null) {
        c.put("&cn", str);
      }
      str = paramUri.getQueryParameter("utm_content");
      if (str != null) {
        c.put("&cc", str);
      }
      str = paramUri.getQueryParameter("utm_medium");
      if (str != null) {
        c.put("&cm", str);
      }
      str = paramUri.getQueryParameter("utm_source");
      if (str != null) {
        c.put("&cs", str);
      }
      str = paramUri.getQueryParameter("utm_term");
      if (str != null) {
        c.put("&ck", str);
      }
      str = paramUri.getQueryParameter("dclid");
      if (str != null) {
        c.put("&dclid", str);
      }
      str = paramUri.getQueryParameter("gclid");
      if (str != null) {
        c.put("&gclid", str);
      }
      paramUri = paramUri.getQueryParameter("aclid");
    } while (paramUri == null);
    c.put("&aclid", paramUri);
  }
  
  void a(m paramm)
  {
    b("Loading Tracker config values");
    g = paramm;
    if (g.a())
    {
      paramm = g.b();
      a("&tid", paramm);
      a("trackingId loaded", paramm);
    }
    if (g.c())
    {
      paramm = Double.toString(g.d());
      a("&sf", paramm);
      a("Sample frequency loaded", paramm);
    }
    if (g.e())
    {
      int i = g.f();
      a(i);
      a("Session timeout loaded", Integer.valueOf(i));
    }
    boolean bool;
    if (g.g())
    {
      bool = g.h();
      b(bool);
      a("Auto activity tracking loaded", Boolean.valueOf(bool));
    }
    if (g.i())
    {
      bool = g.j();
      if (bool) {
        a("&aip", "1");
      }
      a("Anonymize ip loaded", Boolean.valueOf(bool));
    }
    a(g.k());
  }
  
  public void a(String paramString)
  {
    a("&cd", paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    zzx.zzb(paramString1, "Key should be non-null");
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    b.put(paramString1, paramString2);
  }
  
  public void a(final Map<String, String> paramMap)
  {
    final long l = n().a();
    if (s().f())
    {
      c("AppOptOut is set to true. Not sending Google Analytics hit");
      return;
    }
    boolean bool1 = s().e();
    final HashMap localHashMap = new HashMap();
    a(b, localHashMap);
    a(paramMap, localHashMap);
    final boolean bool2 = n.a((String)b.get("useSecure"), true);
    b(c, localHashMap);
    c.clear();
    paramMap = (String)localHashMap.get("t");
    if (TextUtils.isEmpty(paramMap))
    {
      p().a(localHashMap, "Missing hit type parameter");
      return;
    }
    final String str = (String)localHashMap.get("tid");
    if (TextUtils.isEmpty(str))
    {
      p().a(localHashMap, "Missing tracking id parameter");
      return;
    }
    final boolean bool3 = b();
    try
    {
      if (("screenview".equalsIgnoreCase(paramMap)) || ("pageview".equalsIgnoreCase(paramMap)) || ("appview".equalsIgnoreCase(paramMap)) || (TextUtils.isEmpty(paramMap)))
      {
        int j = Integer.parseInt((String)b.get("&a")) + 1;
        int i = j;
        if (j >= Integer.MAX_VALUE) {
          i = 1;
        }
        b.put("&a", Integer.toString(i));
      }
      r().a(new Runnable()
      {
        public void run()
        {
          boolean bool = true;
          if (g.a(g.this).b()) {
            localHashMap.put("sc", "start");
          }
          n.b(localHashMap, "cid", s().h());
          Object localObject = (String)localHashMap.get("sf");
          if (localObject != null)
          {
            double d1 = n.a((String)localObject, 100.0D);
            if (n.a(d1, (String)localHashMap.get("cid")))
            {
              b("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(d1));
              return;
            }
          }
          localObject = g.b(g.this);
          if (bool3)
          {
            n.a(localHashMap, "ate", ((a)localObject).b());
            n.a(localHashMap, "adid", ((a)localObject).c());
            localObject = g.c(g.this).c();
            n.a(localHashMap, "an", ((kp)localObject).a());
            n.a(localHashMap, "av", ((kp)localObject).b());
            n.a(localHashMap, "aid", ((kp)localObject).c());
            n.a(localHashMap, "aiid", ((kp)localObject).d());
            localHashMap.put("v", "1");
            localHashMap.put("_v", s.b);
            n.a(localHashMap, "ul", g.d(g.this).b().f());
            n.a(localHashMap, "sr", g.e(g.this).c());
            if ((!paramMap.equals("transaction")) && (!paramMap.equals("item"))) {
              break label383;
            }
          }
          label383:
          for (int i = 1;; i = 0)
          {
            if ((i != 0) || (g.f(g.this).a())) {
              break label388;
            }
            g.g(g.this).a(localHashMap, "Too many hits sent too quickly, rate limiting invoked");
            return;
            localHashMap.remove("ate");
            localHashMap.remove("adid");
            break;
          }
          label388:
          long l2 = n.b((String)localHashMap.get("ht"));
          long l1 = l2;
          if (l2 == 0L) {
            l1 = l;
          }
          if (bool2)
          {
            localObject = new com.google.android.gms.analytics.internal.c(g.this, localHashMap, l1, str);
            g.h(g.this).c("Dry run enabled. Would have sent hit", localObject);
            return;
          }
          localObject = (String)localHashMap.get("cid");
          HashMap localHashMap = new HashMap();
          n.a(localHashMap, "uid", localHashMap);
          n.a(localHashMap, "an", localHashMap);
          n.a(localHashMap, "aid", localHashMap);
          n.a(localHashMap, "av", localHashMap);
          n.a(localHashMap, "aiid", localHashMap);
          String str = g;
          if (!TextUtils.isEmpty((CharSequence)localHashMap.get("adid"))) {}
          for (;;)
          {
            localObject = new v(0L, (String)localObject, str, bool, 0L, localHashMap);
            l2 = g.i(g.this).a((v)localObject);
            localHashMap.put("_s", String.valueOf(l2));
            localObject = new com.google.android.gms.analytics.internal.c(g.this, localHashMap, l1, str);
            g.j(g.this).a((com.google.android.gms.analytics.internal.c)localObject);
            return;
            bool = false;
          }
        }
      });
      return;
    }
    finally {}
  }
  
  public void a(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (c() == paramBoolean) {
          return;
        }
        if (paramBoolean)
        {
          Context localContext = o();
          f = new b(this, Thread.getDefaultUncaughtExceptionHandler(), localContext);
          Thread.setDefaultUncaughtExceptionHandler(f);
          b("Uncaught exceptions will be reported to Google Analytics");
          return;
        }
      }
      finally {}
      Thread.setDefaultUncaughtExceptionHandler(f.b());
      b("Uncaught exceptions will not be reported to Google Analytics");
    }
  }
  
  public void b(boolean paramBoolean)
  {
    e.a(paramBoolean);
  }
  
  boolean b()
  {
    return a;
  }
  
  private class a
    extends r
    implements c.a
  {
    private boolean b;
    private int c;
    private long d = -1L;
    private boolean e;
    private long f;
    
    protected a(t paramt)
    {
      super();
    }
    
    private void d()
    {
      if ((d >= 0L) || (b))
      {
        s().a(g.a(g.this));
        return;
      }
      s().b(g.a(g.this));
    }
    
    protected void a() {}
    
    public void a(long paramLong)
    {
      d = paramLong;
      d();
    }
    
    public void a(Activity paramActivity)
    {
      if ((c == 0) && (c())) {
        e = true;
      }
      c += 1;
      HashMap localHashMap;
      g localg;
      if (b)
      {
        localObject = paramActivity.getIntent();
        if (localObject != null) {
          a(((Intent)localObject).getData());
        }
        localHashMap = new HashMap();
        localHashMap.put("&t", "screenview");
        localg = g.this;
        if (g.k(g.this) == null) {
          break label159;
        }
      }
      label159:
      for (Object localObject = g.k(g.this).a(paramActivity);; localObject = paramActivity.getClass().getCanonicalName())
      {
        localg.a("&cd", (String)localObject);
        if (TextUtils.isEmpty((CharSequence)localHashMap.get("&dr")))
        {
          paramActivity = g.a(paramActivity);
          if (!TextUtils.isEmpty(paramActivity)) {
            localHashMap.put("&dr", paramActivity);
          }
        }
        a(localHashMap);
        return;
      }
    }
    
    public void a(boolean paramBoolean)
    {
      b = paramBoolean;
      d();
    }
    
    public void b(Activity paramActivity)
    {
      c -= 1;
      c = Math.max(0, c);
      if (c == 0) {
        f = n().b();
      }
    }
    
    public boolean b()
    {
      try
      {
        boolean bool = e;
        e = false;
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    boolean c()
    {
      return n().b() >= f + Math.max(1000L, d);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */