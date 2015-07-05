package com.crashlytics.android;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.crashlytics.android.internal.a;
import com.crashlytics.android.internal.am;
import com.crashlytics.android.internal.aq;
import com.crashlytics.android.internal.bd;
import com.crashlytics.android.internal.bg;
import com.crashlytics.android.internal.bh;
import com.crashlytics.android.internal.bo;
import com.crashlytics.android.internal.bu;
import com.crashlytics.android.internal.c;
import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cj;
import com.crashlytics.android.internal.ck;
import com.crashlytics.android.internal.cl;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class d
  extends ck
{
  private static ContextWrapper j;
  private static String k;
  private static String l;
  private static String m;
  private static String n;
  private static String o;
  private static String p;
  private static String q;
  private static boolean r = false;
  private static t s = null;
  private static bu t;
  private static float u;
  private static d v;
  private final long a = System.currentTimeMillis();
  private final ConcurrentHashMap<String, String> b = new ConcurrentHashMap();
  private e c;
  private bb d;
  private bo e = null;
  private String f = null;
  private String g = null;
  private String h = null;
  private String i;
  
  private ak a(ac paramac)
  {
    String str = bd.a(new String[] { i });
    int i1 = com.crashlytics.android.internal.ai.a(l).a();
    return new ak(p, k, o, n, str, m, i1, q, "0", paramac);
  }
  
  /* Error */
  public static d a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 119	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   6: ldc 2
    //   8: invokevirtual 122	com/crashlytics/android/internal/cl:a	(Ljava/lang/Class;)Lcom/crashlytics/android/internal/ck;
    //   11: checkcast 2	com/crashlytics/android/d
    //   14: astore_0
    //   15: aload_0
    //   16: ifnull +8 -> 24
    //   19: ldc 2
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: getstatic 124	com/crashlytics/android/d:v	Lcom/crashlytics/android/d;
    //   27: ifnonnull +13 -> 40
    //   30: new 2	com/crashlytics/android/d
    //   33: dup
    //   34: invokespecial 125	com/crashlytics/android/d:<init>	()V
    //   37: putstatic 124	com/crashlytics/android/d:v	Lcom/crashlytics/android/d;
    //   40: getstatic 124	com/crashlytics/android/d:v	Lcom/crashlytics/android/d;
    //   43: astore_0
    //   44: goto -25 -> 19
    //   47: astore_0
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_0
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   14	30	0	locald	d
    //   47	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	15	47	finally
    //   24	40	47	finally
    //   40	44	47	finally
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    b(paramInt, paramString1, paramString2);
    cl.a().b().a(paramInt, paramString1, paramString2, true);
  }
  
  public static void a(Context paramContext)
  {
    a(paramContext, 1.0F);
  }
  
  public static void a(Context paramContext, float paramFloat)
  {
    u = paramFloat;
    if (!bd.d(paramContext)) {
      cl.a().a(new a());
    }
    cl.a(paramContext, new ck[] { a(), new c() });
  }
  
  static void a(String paramString)
  {
    c localc = (c)cl.a().a(c.class);
    if (localc != null) {
      localc.a(new bh(paramString));
    }
  }
  
  private void a(String paramString, Context paramContext, float paramFloat)
  {
    boolean bool2 = false;
    for (;;)
    {
      Object localObject;
      try
      {
        if (j != null)
        {
          cl.a().b().a("Crashlytics", "Crashlytics already started, ignoring re-initialization attempt.");
          return;
        }
        p = paramString;
        j = new ContextWrapper(paramContext.getApplicationContext());
        t = new bu(cl.a().b());
        cl.a().b().b("Crashlytics", "Initializing Crashlytics " + c());
      }
      finally {}
      try
      {
        k = j.getPackageName();
        localObject = j.getPackageManager();
        l = ((PackageManager)localObject).getInstallerPackageName(k);
        cl.a().b().a("Crashlytics", "Installer package name is: " + l);
        localObject = ((PackageManager)localObject).getPackageInfo(k, 0);
        n = Integer.toString(versionCode);
        if (versionName != null) {
          break label521;
        }
        localObject = "0.0";
        o = (String)localObject;
        m = paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
        q = Integer.toString(getApplicationInfotargetSdkVersion);
        i = bd.i(paramContext);
      }
      catch (Exception localException)
      {
        cl.a().b().a("Crashlytics", "Error setting up app properties", localException);
        continue;
      }
      e = new bo(j);
      e.h();
      new al(i, bd.a(j, "com.crashlytics.RequireBuildId", true)).a(paramString, k);
      boolean bool1 = bool2;
      try
      {
        cl.a().b().a("Crashlytics", "Installing exception handler...");
        bool1 = bool2;
        d = new bb(Thread.getDefaultUncaughtExceptionHandler(), c, i);
        bool1 = bool2;
        bool2 = d.f();
        bool1 = bool2;
        d.d();
        bool1 = bool2;
        d.c();
        bool1 = bool2;
        d.h();
        bool1 = bool2;
        Thread.setDefaultUncaughtExceptionHandler(d);
        bool1 = bool2;
        cl.a().b().a("Crashlytics", "Successfully installed exception handler.");
        bool1 = bool2;
      }
      catch (Exception paramString)
      {
        cl.a().b().a("Crashlytics", "There was a problem installing the exception handler.", paramString);
        continue;
      }
      paramString = new CountDownLatch(1);
      new Thread(new az(this, paramContext, paramFloat, paramString), "Crashlytics Initializer").start();
      if (bool1)
      {
        cl.a().b().a("Crashlytics", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try
        {
          if (paramString.await(4000L, TimeUnit.MILLISECONDS)) {
            continue;
          }
          cl.a().b().c("Crashlytics", "Crashlytics initialization was not completed in the allotted time.");
        }
        catch (InterruptedException paramString)
        {
          cl.a().b().a("Crashlytics", "Crashlytics was interrupted during initialization.", paramString);
        }
        continue;
        label521:
        localObject = versionName;
      }
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      if ((j != null) && (bd.f(j))) {
        throw new IllegalArgumentException("Custom attribute key cannot be null.");
      }
      cl.a().b().a("Crashlytics", "Attempting to set custom attribute with null key, ignoring.", null);
      return;
    }
    String str = e(paramString1);
    if ((ab.size() < 64) || (ab.containsKey(str)))
    {
      if (paramString2 == null) {}
      for (paramString1 = "";; paramString1 = e(paramString2))
      {
        ab.put(str, paramString1);
        return;
      }
    }
    cl.a().b().a("Crashlytics", "Exceeded maximum number of custom attributes (64)");
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    a(paramString, Boolean.toString(paramBoolean));
  }
  
  public static void a(Throwable paramThrowable)
  {
    d locald = a();
    if ((locald == null) || (d == null))
    {
      cl.a().b().a("Crashlytics", "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions.", null);
      return;
    }
    if (paramThrowable == null)
    {
      cl.a().b().a(5, "Crashlytics", "Crashlytics is ignoring a request to log a null exception.");
      return;
    }
    d.a(Thread.currentThread(), paramThrowable);
  }
  
  static void a(boolean paramBoolean)
  {
    bd.a().edit().putBoolean("always_send_reports_opt_in", true).commit();
  }
  
  private static void b(int paramInt, String paramString1, String paramString2)
  {
    d locald = a();
    if ((locald == null) || (d == null))
    {
      cl.a().b().a(paramString1, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages.", null);
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = a;
    d.a(l1 - l2, bd.b(paramInt) + "/" + paramString1 + " " + paramString2);
  }
  
  static void b(String paramString)
  {
    c localc = (c)cl.a().a(c.class);
    if (localc != null) {
      localc.a(new bg(paramString));
    }
  }
  
  private boolean b(Context paramContext, float paramFloat)
  {
    boolean bool4 = true;
    boolean bool3 = true;
    int i2 = 0;
    Object localObject = bd.g(w());
    try
    {
      com.crashlytics.android.internal.at.a().a(paramContext, t, n, o, l()).c();
      paramContext = com.crashlytics.android.internal.at.a().b();
      if (paramContext == null) {}
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          localam = a;
          if ("new".equals(a))
          {
            localObject = a(ac.a(w(), (String)localObject));
            if (new x(l(), b, t).a((ak)localObject)) {
              bool1 = com.crashlytics.android.internal.at.a().d();
            }
          }
        }
        catch (Exception localException)
        {
          try
          {
            am localam;
            bool2 = d.b;
            if ((bool1) && (bool2))
            {
              bool1 = bool4;
              try
              {
                bool2 = d.b() & true;
                bool1 = bool2;
                paramContext = t();
                i1 = i2;
                bool1 = bool2;
                if (paramContext != null)
                {
                  bool1 = bool2;
                  new af(paramContext).a(paramFloat);
                  bool1 = bool2;
                  i1 = i2;
                }
              }
              catch (Exception paramContext)
              {
                cl.a().b().a("Crashlytics", "Error sending crash report", paramContext);
                i1 = i2;
                continue;
              }
              if (i1 != 0) {
                cl.a().b().a("Crashlytics", "Crash reporting disabled.");
              }
              return bool1;
              paramContext = paramContext;
              cl.a().b().a("Crashlytics", "Error dealing with settings", paramContext);
              paramContext = null;
              continue;
              cl.a().b().a("Crashlytics", "Failed to create app with Crashlytics service.", null);
              bool1 = false;
              continue;
              if ("configured".equals(a))
              {
                bool1 = com.crashlytics.android.internal.at.a().d();
                continue;
              }
              if (d)
              {
                cl.a().b().a("Crashlytics", "Server says an update is required - forcing a full App update.");
                localObject = a(ac.a(w(), (String)localObject));
                new ai(l(), b, t).a((ak)localObject);
              }
              bool1 = true;
              continue;
              localException = localException;
              cl.a().b().a("Crashlytics", "Error performing auto configuration.", localException);
              bool1 = false;
              continue;
            }
          }
          catch (Exception paramContext)
          {
            cl.a().b().a("Crashlytics", "Error getting collect reports setting.", paramContext);
            bool2 = false;
            continue;
            int i1 = 1;
            bool1 = bool3;
            continue;
          }
        }
        boolean bool2 = false;
        boolean bool1 = false;
      }
    }
  }
  
  @Deprecated
  public static String c()
  {
    return a().f();
  }
  
  public static void c(String paramString)
  {
    b(3, "Crashlytics", paramString);
  }
  
  public static void d(String paramString)
  {
    af = e(paramString);
  }
  
  private static String e(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      paramString = paramString.trim();
      str = paramString;
      if (paramString.length() > 1024) {
        str = paramString.substring(0, 1024);
      }
    }
    return str;
  }
  
  static String g()
  {
    return k;
  }
  
  static String h()
  {
    return l;
  }
  
  static String i()
  {
    return o;
  }
  
  static String j()
  {
    return n;
  }
  
  static String k()
  {
    return m;
  }
  
  static String l()
  {
    return bd.a(j, "com.crashlytics.ApiEndpoint");
  }
  
  static boolean n()
  {
    return bd.a().getBoolean("always_send_reports_opt_in", false);
  }
  
  final Map<String, String> b()
  {
    return Collections.unmodifiableMap(b);
  }
  
  final bo d()
  {
    return e;
  }
  
  protected final void e()
  {
    Context localContext = super.w();
    String str = cj.a(localContext, false);
    if (str == null) {
      return;
    }
    try
    {
      a(str, localContext, u);
      return;
    }
    catch (CrashlyticsMissingDependencyException localCrashlyticsMissingDependencyException)
    {
      throw localCrashlyticsMissingDependencyException;
    }
    catch (Exception localException)
    {
      cl.a().b().a("Crashlytics", "Crashlytics was not started due to an exception during initialization", localException);
    }
  }
  
  public final String f()
  {
    return cl.a().f();
  }
  
  final boolean m()
  {
    return ((Boolean)com.crashlytics.android.internal.at.a().a(new ar(this), Boolean.valueOf(false))).booleanValue();
  }
  
  final bb o()
  {
    return d;
  }
  
  final String p()
  {
    if (e.a()) {
      return f;
    }
    return null;
  }
  
  final String q()
  {
    if (e.a()) {
      return g;
    }
    return null;
  }
  
  final String r()
  {
    if (e.a()) {
      return h;
    }
    return null;
  }
  
  final boolean s()
  {
    return ((Boolean)com.crashlytics.android.internal.at.a().a(new as(this), Boolean.valueOf(true))).booleanValue();
  }
  
  final z t()
  {
    return (z)com.crashlytics.android.internal.at.a().a(new at(this), null);
  }
  
  final com.crashlytics.android.internal.as u()
  {
    return (com.crashlytics.android.internal.as)com.crashlytics.android.internal.at.a().a(new au(this), null);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */