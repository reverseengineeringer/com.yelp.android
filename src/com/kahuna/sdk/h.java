package com.kahuna.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.yelp.android.ao.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Timer;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;

public class h
{
  private static z P;
  private static boolean Q = false;
  private static int R = -1;
  private static boolean S = false;
  private static boolean T = false;
  private static boolean U = false;
  private static ExecutorService X = Executors.newSingleThreadExecutor();
  private static boolean Y = false;
  private static boolean Z = false;
  protected static boolean a = false;
  protected static int b;
  protected static String c;
  private static boolean e = false;
  private static Object f = new Object();
  private static Object g = new Object();
  private static h h = null;
  private String A;
  private Map<String, String> B;
  private Object C = new Object();
  private Set<String> D = new HashSet();
  private Object E = new Object();
  private List<Event> F;
  private List<Event> G;
  private Object H = new Object();
  private boolean I;
  private Object J = new Object();
  private u K;
  private int[][] L;
  private int M;
  private AtomicInteger N;
  private Timer O;
  private ah V;
  private long W;
  private AtomicInteger aa;
  private String ab;
  private JSONArray ac;
  private boolean d = false;
  private final String i = "556";
  private final String j = "Android";
  private String k = null;
  private String l = null;
  private final String m = "https://tap-nexus.appspot.com/log";
  private Context n;
  private final a o;
  private String p;
  private boolean q = false;
  private boolean r = true;
  private final String s = "https://tap-nexus.appspot.com/log";
  private String t;
  private String u;
  private String v;
  private String w;
  private String x = "Android";
  private String y;
  private final String z = "556";
  
  static
  {
    b = 5000;
  }
  
  private h()
  {
    int[] arrayOfInt1 = { 5000, 10000 };
    int[] arrayOfInt2 = { 20000, 40000 };
    int[] arrayOfInt3 = { 40000, 80000 };
    L = new int[][] { arrayOfInt1, { 10000, 20000 }, arrayOfInt2, arrayOfInt3 };
    M = 0;
    W = 0L;
    aa = new AtomicInteger(0);
    ab = null;
    ac = null;
    o = new a();
    o.a(60000);
  }
  
  private void A()
  {
    synchronized (J)
    {
      if (K != null)
      {
        K.cancel();
        K = null;
      }
      if (M >= V.f())
      {
        z();
        aa.set(0);
        if (a) {
          Log.d("KahunaAnalytics", "Reached our max retry limit. Will not retry until the next request to flush events. Max attempts: " + V.f());
        }
        return;
      }
      long l1 = y();
      if (a) {
        Log.d("KahunaAnalytics", "Scheduling next retry in: " + l1 + "(ms)");
      }
      K = new u(this, null);
      K.schedule(new v(this, null), l1);
      M += 1;
      return;
    }
  }
  
  private static String B()
  {
    String str2 = ag.a(an);
    String str1 = str2;
    if (aj.a(str2))
    {
      str1 = UUID.randomUUID().toString();
      ag.a(str1, an);
    }
    return str1;
  }
  
  protected static h a()
  {
    synchronized (f)
    {
      if (h == null) {
        h = new h();
      }
      h localh = h;
      return localh;
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Must have valid Application context to use Kahuna Analytics.");
    }
    if (aj.a(paramString1)) {
      throw new IllegalArgumentException("Attempted to start Kahuna with invalid key! You must use your api Key with Kahuna");
    }
    h localh = a();
    n = paramContext;
    p = paramString1;
    c = paramString2;
    if (a) {
      Log.d("KahunaAnalytics", "Called onCreate with Key:" + p);
    }
    X.execute(new x(new i(paramContext)));
  }
  
  private void a(Event arg1)
  {
    int i1 = 1;
    if ((??? == null) && (a)) {
      Log.w("KahunaAnalytics", "Ignoring request to track (null) Event object");
    }
    if (aj.a(???.a()))
    {
      if (a) {
        Log.w("KahunaAnalytics", "Cannot track null or empty event name");
      }
      return;
    }
    Object localObject1 = a();
    if (!q) {
      ((h)localObject1).u();
    }
    Object localObject4 = ???;
    if (!ah.a.contains(???.a().toLowerCase()))
    {
      localObject4 = V.j();
      localObject1 = ???;
      if (localObject4 != null)
      {
        localObject1 = ???;
        if (!((Map)localObject4).isEmpty())
        {
          localObject4 = ((Map)localObject4).entrySet().iterator();
          do
          {
            localObject1 = ???;
            if (!((Iterator)localObject4).hasNext()) {
              break;
            }
            ??? = (Map.Entry)((Iterator)localObject4).next();
          } while (!aj.a((String)((Map.Entry)???).getKey(), ???.a()));
          localObject1 = new Event(???);
          ((Event)localObject1).a((String)((Map.Entry)???).getValue());
          if (!a) {
            break label803;
          }
          Log.w("KahunaAnalytics", "Mapped event name from: " + ???.a() + " to:" + ((Event)localObject1).a());
        }
      }
    }
    label783:
    label803:
    for (;;)
    {
      localObject4 = V.l();
      ??? = V.k();
      if ((localObject4 != null) && (!((Set)localObject4).isEmpty()))
      {
        ??? = ((Set)localObject4).iterator();
        do
        {
          if (!???.hasNext()) {
            break;
          }
        } while (!aj.a((String)???.next(), ((Event)localObject1).a()));
      }
      for (;;)
      {
        localObject4 = localObject1;
        if (i1 == 0)
        {
          if (!a) {
            break;
          }
          Log.w("KahunaAnalytics", "Ignoring event: " + ((Event)localObject1).a() + " not in include list.");
          return;
          localObject4 = localObject1;
          if (??? != null)
          {
            localObject4 = localObject1;
            if (!???.isEmpty())
            {
              ??? = ???.iterator();
              do
              {
                if (!???.hasNext()) {
                  break;
                }
              } while (!aj.a((String)???.next(), ((Event)localObject1).a()));
            }
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          localObject4 = localObject1;
          if (i1 != 0)
          {
            if (!a) {
              break;
            }
            Log.w("KahunaAnalytics", "Ignoring event: " + ((Event)localObject1).a() + " in exclude list.");
            return;
          }
          if (b.a(((Event)localObject4).a().toLowerCase())) {}
          for (;;)
          {
            synchronized (E)
            {
              localObject1 = b.a(((Event)localObject4).a(), ((Event)localObject4).b());
              ??? = (Event)localObject1;
              if (localObject1 == null)
              {
                F.add(localObject4);
                if (a) {
                  Log.d("KahunaAnalytics", "Queueing event:" + ((Event)localObject4).a());
                }
                b.a((Event)localObject4);
                ??? = (Event)localObject4;
              }
              ???.g();
              if (a) {
                Log.d("KahunaAnalytics", "incrementing bucket count for event:" + ???.a());
              }
              if (((Event)localObject4).d() > 0)
              {
                if (???.d() < 0) {
                  ???.a(0);
                }
                ???.a(???.d() + ((Event)localObject4).d());
              }
              if (((Event)localObject4).e() > 0)
              {
                if (???.e() < 0) {
                  ???.b(0);
                }
                ???.b(???.e() + ((Event)localObject4).e());
              }
              if (!q) {
                break label783;
              }
              synchronized (H)
              {
                if (!I) {
                  break;
                }
                return;
              }
            }
            synchronized (E)
            {
              F.add(localObject4);
              if (a) {
                Log.d("KahunaAnalytics", "Queueing event:" + ((Event)localObject4).a());
              }
            }
          }
          d(((Event)localObject4).a());
          return;
          Log.d("KahunaAnalytics", "Please call the method onAppCreate() with your secretKey before trackEvent otherwise events cannot be logged");
          return;
        }
        i1 = 0;
      }
    }
  }
  
  public static void a(h paramh, com.kahuna.sdk.location.i parami, String paramString)
  {
    if (a() != paramh)
    {
      Log.w("KahunaAnalytics", "Attempted to call public internal API. Ignoring call.");
      return;
    }
    X.execute(new x(new m(parami, paramString)));
  }
  
  public static void a(Class<?> paramClass)
  {
    ak.a(paramClass);
  }
  
  public static void a(String paramString)
  {
    a(paramString, -1, -1, false);
  }
  
  private static void a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (aj.a(paramString))
    {
      if (a) {
        Log.w("KahunaAnalytics", "You cannot track a null or empty String event name. Ignoring event.");
      }
      return;
    }
    paramString = new String(paramString);
    X.execute(new x(new k(paramString, paramBoolean, paramInt1, paramInt2)));
  }
  
  public static void a(String paramString1, String paramString2)
  {
    X.execute(new x(new s(paramString1, paramString2)));
  }
  
  public static void a(Map<String, String> paramMap)
  {
    X.execute(new x(new j(paramMap)));
  }
  
  protected static void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a = paramBoolean;
      return;
    }
    a = e;
  }
  
  protected static String b()
  {
    return ap;
  }
  
  protected static void b(String paramString)
  {
    try
    {
      h localh = a();
      paramString = new Event("k_push_clicked", System.currentTimeMillis() / 1000L, null, null, null, paramString);
      if (S) {
        paramString.c();
      }
      localh.a(paramString);
      return;
    }
    catch (Exception paramString)
    {
      Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.trackPushClicked(): " + paramString);
    }
  }
  
  protected static void b(String paramString1, String paramString2)
  {
    X.execute(new x(new l(paramString1, paramString2)));
  }
  
  public static void c()
  {
    try
    {
      X.execute(new x(new p()));
      return;
    }
    catch (Exception localException)
    {
      Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.start(): " + localException);
    }
  }
  
  /* Error */
  protected static void c(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 254	com/kahuna/sdk/h:a	()Lcom/kahuna/sdk/h;
    //   6: astore_1
    //   7: aload_0
    //   8: invokestatic 266	com/kahuna/sdk/aj:a	(Ljava/lang/String;)Z
    //   11: ifeq +25 -> 36
    //   14: aload_1
    //   15: ldc_w 525
    //   18: putfield 527	com/kahuna/sdk/h:A	Ljava/lang/String;
    //   21: aload_1
    //   22: getfield 527	com/kahuna/sdk/h:A	Ljava/lang/String;
    //   25: aload_1
    //   26: getfield 256	com/kahuna/sdk/h:n	Landroid/content/Context;
    //   29: invokestatic 529	com/kahuna/sdk/ag:b	(Ljava/lang/String;Landroid/content/Context;)V
    //   32: ldc 2
    //   34: monitorexit
    //   35: return
    //   36: aload_1
    //   37: aload_0
    //   38: putfield 527	com/kahuna/sdk/h:A	Ljava/lang/String;
    //   41: aload_1
    //   42: getfield 256	com/kahuna/sdk/h:n	Landroid/content/Context;
    //   45: invokestatic 531	com/kahuna/sdk/ag:c	(Landroid/content/Context;)Ljava/lang/String;
    //   48: invokestatic 266	com/kahuna/sdk/aj:a	(Ljava/lang/String;)Z
    //   51: ifeq +28 -> 79
    //   54: aload_1
    //   55: new 342	com/kahuna/sdk/Event
    //   58: dup
    //   59: ldc_w 533
    //   62: invokestatic 501	java/lang/System:currentTimeMillis	()J
    //   65: ldc2_w 502
    //   68: ldiv
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: aconst_null
    //   73: invokespecial 506	com/kahuna/sdk/Event:<init>	(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    //   76: invokespecial 452	com/kahuna/sdk/h:a	(Lcom/kahuna/sdk/Event;)V
    //   79: aload_1
    //   80: getfield 527	com/kahuna/sdk/h:A	Ljava/lang/String;
    //   83: aload_1
    //   84: getfield 256	com/kahuna/sdk/h:n	Landroid/content/Context;
    //   87: invokestatic 529	com/kahuna/sdk/ag:b	(Ljava/lang/String;Landroid/content/Context;)V
    //   90: goto -58 -> 32
    //   93: astore_0
    //   94: ldc 2
    //   96: monitorexit
    //   97: aload_0
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	paramString	String
    //   6	78	1	localh	h
    // Exception table:
    //   from	to	target	type
    //   3	32	93	finally
    //   36	79	93	finally
    //   79	90	93	finally
  }
  
  private static void c(Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    try
    {
      if (!a) {
        break label478;
      }
      Log.d("KahunaAnalytics", "You must specify a valid Map for user Attributes. Ignoring this call to setUserAttributes");
      return;
    }
    catch (Exception paramMap)
    {
      Object localObject1;
      HashMap localHashMap;
      int i1;
      if (!a) {
        break label478;
      }
      Log.d("KahunaAnalytics", "Exception attempting to set user attributes:" + paramMap);
      return;
      synchronized (C)
      {
        D.addAll((Collection)localObject1);
        ag.a(D, n);
        if (!a) {
          break label478;
        }
        Log.d("KahunaAnalytics", "Detected changes for the following user attributes: " + localHashMap);
        Log.d("KahunaAnalytics", "Will flush updated attributes in the next batch.");
        return;
      }
      if (!a) {
        break label478;
      }
      Log.d("KahunaAnalytics", "Did not detect any change in user attributes, not sending request...");
      return;
    }
    localObject1 = a().v();
    localHashMap = new HashMap();
    i1 = 0;
    ??? = paramMap.keySet().iterator();
    label478:
    label479:
    for (;;)
    {
      if (((Iterator)???).hasNext())
      {
        String str = (String)((Iterator)???).next();
        if (aj.a(str)) {
          continue;
        }
        if (!((Map)localObject1).containsKey(str))
        {
          ((Map)localObject1).put(str, paramMap.get(str));
          localHashMap.put(str, paramMap.get(str));
          i1 = 1;
          break label479;
        }
        if ((((Map)localObject1).get(str) == null) || (paramMap.get(str) == null))
        {
          if (((Map)localObject1).get(str) != paramMap.get(str))
          {
            ((Map)localObject1).put(str, paramMap.get(str));
            localHashMap.put(str, paramMap.get(str));
            i1 = 1;
            break label479;
          }
        }
        else if (!((String)((Map)localObject1).get(str)).equals(paramMap.get(str)))
        {
          ((Map)localObject1).put(str, paramMap.get(str));
          localHashMap.put(str, paramMap.get(str));
          i1 = 1;
          break label479;
        }
      }
      else if (i1 != 0)
      {
        paramMap = a();
        ag.b((Map)localObject1, an);
        localObject1 = new HashSet();
        ??? = localHashMap.keySet().iterator();
        while (((Iterator)???).hasNext()) {
          ((Set)localObject1).add((String)((Iterator)???).next());
        }
      }
      return;
    }
  }
  
  public static void d()
  {
    try
    {
      X.execute(new x(new q()));
      return;
    }
    catch (Exception localException)
    {
      Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.stop(): " + localException);
    }
  }
  
  private void d(String arg1)
  {
    int i2 = 1;
    long l1;
    for (;;)
    {
      int i3;
      synchronized (E)
      {
        if (aj.a(F)) {
          return;
        }
        i3 = F.size();
        if (V.e().contains(???.toLowerCase()))
        {
          i1 = i2;
          if (i1 == 0) {
            break;
          }
          synchronized (J)
          {
            if (K != null)
            {
              K.cancel();
              K = null;
            }
            K = new u(this, null);
            K.schedule(new v(this, null), 0L);
            return;
          }
        }
      }
      int i1 = i2;
      if (i3 < V.d())
      {
        l1 = System.currentTimeMillis() / 1000L;
        i1 = i2;
        if (V.c() + W >= l1) {
          i1 = 0;
        }
      }
    }
    if (V.i().contains(???.toLowerCase()))
    {
      l1 = V.h() * 1000L;
      synchronized (J)
      {
        if ((K != null) && (K.a() - System.currentTimeMillis() > l1))
        {
          K.cancel();
          K = null;
        }
        if (K == null)
        {
          K = new u(this, null);
          K.schedule(new v(this, null), l1);
        }
        return;
      }
    }
    synchronized (J)
    {
      if (K == null)
      {
        K = new u(this, null);
        K.schedule(new v(this, null), V.c() * 1000L);
      }
      return;
    }
  }
  
  private static void d(String paramString1, String paramString2)
  {
    Map localMap;
    try
    {
      if (aj.a(paramString1))
      {
        if (!a) {
          return;
        }
        Log.d("KahunaAnalytics", "Cannot update a user credential with empty string or null key value.");
        return;
      }
      localMap = a().w();
      if ((aj.a(paramString2)) && (!localMap.containsKey(paramString1)))
      {
        if (!a) {
          return;
        }
        Log.d("KahunaAnalytics", "Did not detect any change in user credentials.");
        return;
      }
    }
    catch (Exception paramString1)
    {
      Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.updateUserCredentials(): " + paramString1);
      return;
    }
    if ((localMap.containsKey(paramString1)) && (((String)localMap.get(paramString1)).equals(paramString2)))
    {
      if (a) {
        Log.d("KahunaAnalytics", "Did not detect any change in user credentials.");
      }
    }
    else
    {
      h localh = a();
      localMap.put(paramString1, paramString2);
      ag.a(localMap, n);
      B = localMap;
      localh.a(new Event("k_user_credentials", System.currentTimeMillis() / 1000L, B, null, null, null));
    }
  }
  
  public static Map<String, String> e()
  {
    try
    {
      Map localMap = (Map)X.submit(new t()).get();
      return localMap;
    }
    catch (Exception localException)
    {
      if (a) {
        Log.d("KahunaAnalytics", "Exception attempting to retrieve stored credentials:" + localException);
      }
    }
    return new HashMap();
  }
  
  public static void f()
  {
    X.execute(new x(new n()));
  }
  
  public static void g()
  {
    X.execute(new x(new o()));
  }
  
  public static boolean h()
  {
    h localh = a();
    if (n == null) {
      Log.d("KahunaAnalytics", "Error, push state unknown. You must call onAppCreate() before getting the current status of push.");
    }
    return r;
  }
  
  protected static z i()
  {
    return P;
  }
  
  protected static int j()
  {
    return R;
  }
  
  protected static boolean k()
  {
    return S;
  }
  
  protected static boolean l()
  {
    h localh = a();
    if (!q) {}
    while ((!T) || (N.get() <= 0)) {
      return true;
    }
    return false;
  }
  
  public static void m()
  {
    U = true;
  }
  
  protected static boolean n()
  {
    return U;
  }
  
  protected static String o()
  {
    a().getClass();
    return "556";
  }
  
  public static boolean p()
  {
    return a;
  }
  
  private void u()
  {
    try
    {
      if (n == null) {
        throw new IllegalStateException("You did not call onAppCreate() in your MainApplication's onCreate() method.");
      }
    }
    finally {}
    boolean bool = q;
    if (bool) {}
    for (;;)
    {
      return;
      if (a) {
        Log.d("KahunaAnalytics", "Initializing SDK version: 556");
      }
      try
      {
        ??? = n.getApplicationInfo();
        t = n.getString(labelRes);
        u = n.getPackageManager().getPackageInfo(n.getPackageName(), 0).versionName;
        v = B();
        w = Build.VERSION.RELEASE;
        y = Build.MODEL;
      }
      catch (Exception localException2)
      {
        try
        {
          B = ag.e(n);
          r = ag.b(n);
          N = new AtomicInteger();
        }
        catch (Exception localException2)
        {
          synchronized (E)
          {
            do
            {
              for (;;)
              {
                if (F == null) {
                  F = new ArrayList();
                }
                I = false;
                q = true;
                d = aj.a(n);
                V = ah.a(n);
                b.a(V.m());
                W = ag.h(n);
                if (!a) {
                  break;
                }
                Log.d("KahunaAnalytics", "Loading SDK Config:" + V.a() + " flushInterval: " + V.b() + " flushEventCount: " + V.d() + " events:" + V.e());
                break;
                localException1 = localException1;
                if (a) {
                  Log.d("KahunaAnalytics", "Exception occured trying to set appName and/or appVersion:" + localException1);
                }
                u = "";
                t = "unknown";
              }
              localException2 = localException2;
            } while (!a);
            Log.d("KahunaAnalytics", "Exception occured trying to retrieve previous push enabled setting:" + localException2);
          }
        }
      }
    }
  }
  
  private Map<String, String> v()
  {
    try
    {
      Map localMap = ag.f(n);
      Object localObject3 = localMap;
      if (localMap == null) {
        localObject3 = new HashMap();
      }
      return (Map<String, String>)localObject3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (a) {
          Log.d("KahunaAnalytics", "Exception attempting to retrieve stored attributes:" + localException);
        }
        Object localObject1 = null;
      }
    }
    finally {}
  }
  
  private Map<String, String> w()
  {
    try
    {
      Map localMap = ag.e(n);
      Object localObject3 = localMap;
      if (localMap == null) {
        localObject3 = new HashMap();
      }
      return (Map<String, String>)localObject3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (a) {
          Log.d("KahunaAnalytics", "Exception attempting to retrieve stored credentials:" + localException);
        }
        Object localObject1 = null;
      }
    }
    finally {}
  }
  
  private boolean x()
  {
    synchronized (E)
    {
      Set localSet = V.e();
      if ((localSet.size() > 0) && (F.size() > 0))
      {
        Iterator localIterator = F.iterator();
        while (localIterator.hasNext()) {
          if (localSet.contains(((Event)localIterator.next()).a().toLowerCase())) {
            return true;
          }
        }
      }
      return false;
    }
  }
  
  private long y()
  {
    try
    {
      int i2 = M;
      int i1 = i2;
      if (i2 >= L.length) {
        i1 = L.length - 1;
      }
      i2 = L[i1][1];
      i1 = L[i1][0];
      double d1 = Math.random();
      double d2 = i2 - i1;
      long l1 = (int)(i1 + d1 * d2);
      return l1;
    }
    finally {}
  }
  
  private void z()
  {
    try
    {
      M = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */