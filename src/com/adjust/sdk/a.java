package com.adjust.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.preference.PreferenceManager;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class a
  extends HandlerThread
{
  private static long a;
  private static long b;
  private static long c;
  private static ScheduledExecutorService i;
  private d d;
  private g e;
  private j f;
  private ActivityState g;
  private Logger h;
  private Context j;
  private String k;
  private String l;
  private boolean m;
  private boolean n;
  private boolean o;
  private String p;
  private String q;
  private String r;
  private String s;
  private String t;
  private String u;
  private String v;
  
  public a(Activity paramActivity)
  {
    super("Adjust", 1);
    a(paramActivity);
    paramActivity = Message.obtain();
    arg1 = 72630;
    d.sendMessage(paramActivity);
  }
  
  private void a(long paramLong)
  {
    if (!a(g)) {}
    long l1;
    do
    {
      return;
      l1 = paramLong - g.lastActivity;
      if (l1 < 0L)
      {
        h.f("Time travel!");
        g.lastActivity = paramLong;
        return;
      }
    } while (l1 > b);
    ActivityState localActivityState = g;
    sessionLength += l1;
    localActivityState = g;
    timeSpent = (l1 + timeSpent);
    g.lastActivity = paramLong;
  }
  
  private void a(Activity paramActivity)
  {
    setDaemon(true);
    start();
    a = f.b();
    b = f.c();
    c = f.d();
    d = new d(getLooper(), this);
    j = paramActivity.getApplicationContext();
    v = "android3.3.5";
    o = true;
    h = f.a();
  }
  
  private void a(Uri paramUri)
  {
    if (paramUri == null) {}
    int i1;
    do
    {
      do
      {
        return;
        localObject1 = paramUri.getQuery();
      } while (localObject1 == null);
      paramUri = new HashMap();
      localObject1 = ((String)localObject1).split("&");
      int i2 = localObject1.length;
      i1 = 0;
      if (i1 < i2) {
        break;
      }
    } while (paramUri.size() == 0);
    Object localObject1 = new k(j);
    ((k)localObject1).b(paramUri);
    e((k)localObject1);
    localObject1 = ((k)localObject1).f();
    e.a((ActivityPackage)localObject1);
    e.a();
    h.c(String.format("Reattribution %s", new Object[] { paramUri.toString() }));
    return;
    Object localObject2 = localObject1[i1].split("=");
    if (localObject2.length != 2) {}
    for (;;)
    {
      i1 += 1;
      break;
      String str = localObject2[0];
      if (str.startsWith("adjust_"))
      {
        localObject2 = localObject2[1];
        if (((String)localObject2).length() != 0)
        {
          str = str.substring("adjust_".length());
          if (str.length() != 0) {
            paramUri.put(str, localObject2);
          }
        }
      }
    }
  }
  
  private void a(k paramk)
  {
    if (!c(paramk)) {}
    while (!g.enabled.booleanValue()) {
      return;
    }
    long l1 = System.currentTimeMillis();
    g.createdAt = l1;
    ActivityState localActivityState = g;
    eventCount += 1;
    a(l1);
    e(paramk);
    g.injectEventAttributes(paramk);
    paramk = paramk.d();
    e.a(paramk);
    if (m) {
      h.d(String.format("Buffered event %s", new Object[] { paramk.getSuffix() }));
    }
    for (;;)
    {
      g();
      h.c(String.format(Locale.US, "Event %d", new Object[] { Integer.valueOf(g.eventCount) }));
      return;
      e.a();
    }
  }
  
  private void a(String paramString)
  {
    k = paramString;
    if (k == null)
    {
      h.g("Missing environment");
      h.a(Logger.LogLevel.ASSERT);
      k = "unknown";
      return;
    }
    if ("sandbox".equalsIgnoreCase(k))
    {
      h.g("SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don't forget to set the environment to `production` before publishing!");
      return;
    }
    if ("production".equalsIgnoreCase(k))
    {
      h.g("PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!");
      h.a(Logger.LogLevel.ASSERT);
      return;
    }
    h.g(String.format("Malformed environment '%s'", new Object[] { k }));
    h.a(Logger.LogLevel.ASSERT);
    k = "malformed";
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      l();
    }
    while (!c())
    {
      return;
      a(k);
      b(m);
    }
    q = "";
    r = "";
    s = q.b(j);
    t = q.c(j);
    u = q.a(j);
    if (q.d(j) == null) {
      h.d("Unable to get Google Play Services Advertising ID at start time");
    }
    e = f.a(this, j, n);
    f();
  }
  
  private boolean a(Context paramContext)
  {
    boolean bool = true;
    if (!a(paramContext, "android.permission.INTERNET"))
    {
      h.f("Missing permission: INTERNET");
      bool = false;
    }
    if (!a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      h.e("Missing permission: ACCESS_WIFI_STATE");
    }
    return bool;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  private boolean a(ActivityState paramActivityState)
  {
    if (paramActivityState == null)
    {
      h.f("Missing activity state.");
      return false;
    }
    return true;
  }
  
  private void b(k paramk)
  {
    if (!d(paramk)) {}
    while (!g.enabled.booleanValue()) {
      return;
    }
    long l1 = System.currentTimeMillis();
    g.createdAt = l1;
    ActivityState localActivityState = g;
    eventCount += 1;
    a(l1);
    e(paramk);
    g.injectEventAttributes(paramk);
    paramk = paramk.e();
    e.a(paramk);
    if (m) {
      h.d(String.format("Buffered revenue %s", new Object[] { paramk.getSuffix() }));
    }
    for (;;)
    {
      g();
      h.c(String.format(Locale.US, "Event %d (revenue)", new Object[] { Integer.valueOf(g.eventCount) }));
      return;
      e.a();
    }
  }
  
  private void b(String paramString)
  {
    l = paramString;
    if (l != null) {
      h.d(String.format("Default tracker: '%s'", new Object[] { l }));
    }
  }
  
  private void b(boolean paramBoolean)
  {
    m = paramBoolean;
    if (m) {
      h.d("Event buffering is enabled");
    }
  }
  
  private boolean b(Context paramContext)
  {
    if (paramContext == null)
    {
      h.f("Missing context");
      return false;
    }
    return true;
  }
  
  private void c(boolean paramBoolean)
  {
    n = paramBoolean;
    if (n) {
      h.d("Offline activities will get dropped");
    }
  }
  
  private boolean c()
  {
    return (c(p)) && (d(p)) && (b(j)) && (a(j));
  }
  
  private boolean c(k paramk)
  {
    return (c(p)) && (a(g)) && (paramk.a());
  }
  
  private boolean c(String paramString)
  {
    if (paramString == null)
    {
      h.f("Missing App Token.");
      return false;
    }
    return true;
  }
  
  private void d()
  {
    if (!c(p)) {}
    while ((g != null) && (!g.enabled.booleanValue())) {
      return;
    }
    e.e();
    i();
    long l1 = System.currentTimeMillis();
    if (g == null)
    {
      g = new ActivityState();
      g.sessionCount = 1;
      g.createdAt = l1;
      h();
      g.resetSessionAttributes(l1);
      g.enabled = Boolean.valueOf(o);
      g();
      h.d("First session");
      return;
    }
    long l2 = l1 - g.lastActivity;
    if (l2 < 0L)
    {
      h.f("Time travel!");
      g.lastActivity = l1;
      g();
      return;
    }
    if (l2 > b)
    {
      localActivityState = g;
      sessionCount += 1;
      g.createdAt = l1;
      g.lastInterval = l2;
      h();
      g.resetSessionAttributes(l1);
      g();
      h.c(String.format(Locale.US, "Session %d", new Object[] { Integer.valueOf(g.sessionCount) }));
      return;
    }
    if (l2 > c)
    {
      localActivityState = g;
      subsessionCount += 1;
      h.d(String.format(Locale.US, "Started subsession %d of session %d", new Object[] { Integer.valueOf(g.subsessionCount), Integer.valueOf(g.sessionCount) }));
    }
    ActivityState localActivityState = g;
    sessionLength = (l2 + sessionLength);
    g.lastActivity = l1;
    g();
  }
  
  private boolean d(k paramk)
  {
    return (c(p)) && (a(g)) && (paramk.b());
  }
  
  private boolean d(String paramString)
  {
    if (12 != paramString.length())
    {
      h.f(String.format("Malformed App Token '%s'", new Object[] { paramString }));
      return false;
    }
    return true;
  }
  
  private void e()
  {
    if (!c(p)) {
      return;
    }
    e.d();
    j();
    a(System.currentTimeMillis());
    g();
  }
  
  private void e(k paramk)
  {
    paramk.a(p);
    paramk.c(r);
    paramk.b(q);
    paramk.d(s);
    paramk.f(t);
    paramk.g(u);
    paramk.h(v);
    paramk.i(k);
    paramk.j(l);
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: new 487	java/io/ObjectInputStream
    //   3: dup
    //   4: new 489	java/io/BufferedInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 129	com/adjust/sdk/a:j	Landroid/content/Context;
    //   12: ldc_w 491
    //   15: invokevirtual 495	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   18: invokespecial 498	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   21: invokespecial 499	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   24: astore_1
    //   25: aload_0
    //   26: aload_1
    //   27: invokevirtual 503	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   30: checkcast 73	com/adjust/sdk/ActivityState
    //   33: putfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   36: aload_0
    //   37: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   40: ldc_w 505
    //   43: iconst_2
    //   44: anewarray 190	java/lang/Object
    //   47: dup
    //   48: iconst_0
    //   49: aload_0
    //   50: getfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   53: aastore
    //   54: dup
    //   55: iconst_1
    //   56: aload_0
    //   57: getfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   60: getfield 508	com/adjust/sdk/ActivityState:uuid	Ljava/lang/String;
    //   63: aastore
    //   64: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   67: invokeinterface 199 2 0
    //   72: aload_1
    //   73: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   76: return
    //   77: astore_2
    //   78: aload_0
    //   79: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   82: ldc_w 513
    //   85: invokeinterface 85 2 0
    //   90: aload_1
    //   91: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   94: aload_0
    //   95: aconst_null
    //   96: putfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   99: return
    //   100: astore_2
    //   101: aload_1
    //   102: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   105: goto -11 -> 94
    //   108: astore_1
    //   109: aload_0
    //   110: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   113: ldc_w 515
    //   116: invokeinterface 516 2 0
    //   121: goto -27 -> 94
    //   124: astore_2
    //   125: aload_0
    //   126: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   129: ldc_w 518
    //   132: invokeinterface 85 2 0
    //   137: aload_1
    //   138: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   141: goto -47 -> 94
    //   144: astore_1
    //   145: aload_0
    //   146: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   149: ldc_w 520
    //   152: iconst_1
    //   153: anewarray 190	java/lang/Object
    //   156: dup
    //   157: iconst_0
    //   158: aload_1
    //   159: aastore
    //   160: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   163: invokeinterface 85 2 0
    //   168: goto -74 -> 94
    //   171: astore_2
    //   172: aload_0
    //   173: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   176: ldc_w 522
    //   179: invokeinterface 85 2 0
    //   184: aload_1
    //   185: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   188: goto -94 -> 94
    //   191: astore_2
    //   192: aload_1
    //   193: invokevirtual 511	java/io/ObjectInputStream:close	()V
    //   196: aload_2
    //   197: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	a
    //   24	78	1	localObjectInputStream	java.io.ObjectInputStream
    //   108	30	1	localFileNotFoundException	java.io.FileNotFoundException
    //   144	49	1	localException	Exception
    //   77	1	2	localClassNotFoundException	ClassNotFoundException
    //   100	1	2	localOptionalDataException	java.io.OptionalDataException
    //   124	1	2	localIOException	java.io.IOException
    //   171	1	2	localClassCastException	ClassCastException
    //   191	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   25	72	77	java/lang/ClassNotFoundException
    //   25	72	100	java/io/OptionalDataException
    //   0	25	108	java/io/FileNotFoundException
    //   72	76	108	java/io/FileNotFoundException
    //   90	94	108	java/io/FileNotFoundException
    //   101	105	108	java/io/FileNotFoundException
    //   137	141	108	java/io/FileNotFoundException
    //   184	188	108	java/io/FileNotFoundException
    //   192	198	108	java/io/FileNotFoundException
    //   25	72	124	java/io/IOException
    //   0	25	144	java/lang/Exception
    //   72	76	144	java/lang/Exception
    //   90	94	144	java/lang/Exception
    //   101	105	144	java/lang/Exception
    //   137	141	144	java/lang/Exception
    //   184	188	144	java/lang/Exception
    //   192	198	144	java/lang/Exception
    //   25	72	171	java/lang/ClassCastException
    //   25	72	191	finally
    //   78	90	191	finally
    //   125	137	191	finally
    //   172	184	191	finally
  }
  
  private void f(k paramk)
  {
    try
    {
      paramk.k(PreferenceManager.getDefaultSharedPreferences(j).getString("AdjustInstallReferrer", null));
      return;
    }
    catch (Exception paramk)
    {
      h.f(String.format("Failed to inject referrer (%s)", new Object[] { paramk }));
    }
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: new 544	java/io/ObjectOutputStream
    //   3: dup
    //   4: new 546	java/io/BufferedOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 129	com/adjust/sdk/a:j	Landroid/content/Context;
    //   12: ldc_w 491
    //   15: iconst_0
    //   16: invokevirtual 550	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   19: invokespecial 553	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: invokespecial 554	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   25: astore_1
    //   26: aload_1
    //   27: aload_0
    //   28: getfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   31: invokevirtual 558	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   34: aload_0
    //   35: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   38: ldc_w 560
    //   41: iconst_1
    //   42: anewarray 190	java/lang/Object
    //   45: dup
    //   46: iconst_0
    //   47: aload_0
    //   48: getfield 68	com/adjust/sdk/a:g	Lcom/adjust/sdk/ActivityState;
    //   51: aastore
    //   52: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   55: invokeinterface 199 2 0
    //   60: aload_1
    //   61: invokevirtual 561	java/io/ObjectOutputStream:close	()V
    //   64: return
    //   65: astore_2
    //   66: aload_0
    //   67: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   70: ldc_w 563
    //   73: invokeinterface 85 2 0
    //   78: aload_1
    //   79: invokevirtual 561	java/io/ObjectOutputStream:close	()V
    //   82: return
    //   83: astore_1
    //   84: aload_0
    //   85: getfield 78	com/adjust/sdk/a:h	Lcom/adjust/sdk/Logger;
    //   88: ldc_w 565
    //   91: iconst_1
    //   92: anewarray 190	java/lang/Object
    //   95: dup
    //   96: iconst_0
    //   97: aload_1
    //   98: aastore
    //   99: invokestatic 197	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   102: invokeinterface 85 2 0
    //   107: return
    //   108: astore_2
    //   109: aload_1
    //   110: invokevirtual 561	java/io/ObjectOutputStream:close	()V
    //   113: aload_2
    //   114: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	a
    //   25	54	1	localObjectOutputStream	java.io.ObjectOutputStream
    //   83	27	1	localException	Exception
    //   65	1	2	localNotSerializableException	java.io.NotSerializableException
    //   108	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   26	60	65	java/io/NotSerializableException
    //   0	26	83	java/lang/Exception
    //   60	64	83	java/lang/Exception
    //   78	82	83	java/lang/Exception
    //   109	115	83	java/lang/Exception
    //   26	60	108	finally
    //   66	78	108	finally
  }
  
  private void h()
  {
    Object localObject = new k(j);
    e((k)localObject);
    f((k)localObject);
    g.injectSessionAttributes((k)localObject);
    localObject = ((k)localObject).c();
    e.a((ActivityPackage)localObject);
    e.a();
  }
  
  private void i()
  {
    if (i != null) {
      j();
    }
    i = Executors.newSingleThreadScheduledExecutor();
    i.scheduleWithFixedDelay(new c(this), 1000L, a, TimeUnit.MILLISECONDS);
  }
  
  private void j()
  {
    try
    {
      i.shutdown();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      h.f("No timer found");
    }
  }
  
  private void k()
  {
    if ((g != null) && (!g.enabled.booleanValue())) {
      return;
    }
    e.a();
    a(System.currentTimeMillis());
    g();
  }
  
  private void l()
  {
    Bundle localBundle = m();
    if (localBundle == null) {
      return;
    }
    p = localBundle.getString("AdjustAppToken");
    a(localBundle.getString("AdjustEnvironment"));
    b(localBundle.getString("AdjustDefaultTracker"));
    b(localBundle.getBoolean("AdjustEventBuffering"));
    h.a(localBundle.getString("AdjustLogLevel"));
    c(localBundle.getBoolean("AdjustDropOfflineActivities"));
  }
  
  private Bundle m()
  {
    try
    {
      Object localObject = j.getPackageName();
      localObject = j.getPackageManager().getApplicationInfo((String)localObject, 128).metaData;
      return (Bundle)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      h.f("ApplicationInfo not found");
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        h.f(String.format("Failed to get ApplicationBundle (%s)", new Object[] { localException }));
      }
    }
  }
  
  public void a()
  {
    Message localMessage = Message.obtain();
    arg1 = 72640;
    d.sendMessage(localMessage);
  }
  
  public void a(p paramp)
  {
    if (f == null) {
      return;
    }
    new Handler(j.getMainLooper()).post(new b(this, paramp));
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    k localk = new k(j);
    localk.l(paramString);
    localk.a(paramMap);
    paramString = Message.obtain();
    arg1 = 72660;
    obj = localk;
    d.sendMessage(paramString);
  }
  
  public void b()
  {
    Message localMessage = Message.obtain();
    arg1 = 72650;
    d.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */