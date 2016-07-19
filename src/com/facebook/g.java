package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.internal.v;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class g
{
  private static final String a = g.class.getCanonicalName();
  private static final HashSet<LoggingBehavior> b = new HashSet(Arrays.asList(new LoggingBehavior[] { LoggingBehavior.DEVELOPER_ERRORS }));
  private static volatile Executor c;
  private static volatile String d;
  private static volatile String e;
  private static volatile String f;
  private static volatile String g = "facebook.com";
  private static AtomicLong h = new AtomicLong(65536L);
  private static volatile boolean i = false;
  private static boolean j = false;
  private static File k;
  private static Context l;
  private static int m = 64206;
  private static final Object n = new Object();
  private static final BlockingQueue<Runnable> o = new LinkedBlockingQueue(10);
  private static final ThreadFactory p = new ThreadFactory()
  {
    private final AtomicInteger a = new AtomicInteger(0);
    
    public Thread newThread(Runnable paramAnonymousRunnable)
    {
      return new Thread(paramAnonymousRunnable, "FacebookSdk #" + a.incrementAndGet());
    }
  };
  private static Boolean q = Boolean.valueOf(false);
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 111	com/facebook/g:q	Ljava/lang/Boolean;
    //   6: invokevirtual 117	java/lang/Boolean:booleanValue	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: iconst_1
    //   12: if_icmpne +7 -> 19
    //   15: ldc 2
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: ldc 119
    //   22: invokestatic 124	com/facebook/internal/v:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   25: aload_0
    //   26: iconst_0
    //   27: invokestatic 127	com/facebook/internal/v:b	(Landroid/content/Context;Z)V
    //   30: aload_0
    //   31: iconst_0
    //   32: invokestatic 129	com/facebook/internal/v:a	(Landroid/content/Context;Z)V
    //   35: aload_0
    //   36: invokevirtual 135	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   39: putstatic 137	com/facebook/g:l	Landroid/content/Context;
    //   42: getstatic 137	com/facebook/g:l	Landroid/content/Context;
    //   45: invokestatic 139	com/facebook/g:c	(Landroid/content/Context;)V
    //   48: getstatic 137	com/facebook/g:l	Landroid/content/Context;
    //   51: getstatic 141	com/facebook/g:d	Ljava/lang/String;
    //   54: invokestatic 146	com/facebook/internal/u:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   57: invokestatic 150	com/facebook/internal/p:b	()V
    //   60: getstatic 137	com/facebook/g:l	Landroid/content/Context;
    //   63: invokestatic 155	com/facebook/internal/BoltsMeasurementEventListener:a	(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    //   66: pop
    //   67: getstatic 137	com/facebook/g:l	Landroid/content/Context;
    //   70: invokevirtual 159	android/content/Context:getCacheDir	()Ljava/io/File;
    //   73: putstatic 161	com/facebook/g:k	Ljava/io/File;
    //   76: new 163	java/util/concurrent/FutureTask
    //   79: dup
    //   80: new 8	com/facebook/g$2
    //   83: dup
    //   84: invokespecial 164	com/facebook/g$2:<init>	()V
    //   87: invokespecial 167	java/util/concurrent/FutureTask:<init>	(Ljava/util/concurrent/Callable;)V
    //   90: astore_0
    //   91: invokestatic 170	com/facebook/g:d	()Ljava/util/concurrent/Executor;
    //   94: aload_0
    //   95: invokeinterface 176 2 0
    //   100: iconst_1
    //   101: invokestatic 109	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   104: putstatic 111	com/facebook/g:q	Ljava/lang/Boolean;
    //   107: goto -92 -> 15
    //   110: astore_0
    //   111: ldc 2
    //   113: monitorexit
    //   114: aload_0
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	paramContext	Context
    //   9	4	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	10	110	finally
    //   19	107	110	finally
  }
  
  public static void a(String paramString)
  {
    d = paramString;
  }
  
  public static boolean a()
  {
    try
    {
      boolean bool = q.booleanValue();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt >= m) && (paramInt < m + 100);
  }
  
  public static boolean a(LoggingBehavior paramLoggingBehavior)
  {
    for (;;)
    {
      synchronized (b)
      {
        if ((b()) && (b.contains(paramLoggingBehavior)))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public static boolean b()
  {
    return i;
  }
  
  public static boolean b(Context paramContext)
  {
    v.b();
    return paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
  }
  
  static void c(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if ((paramContext == null) || (metaData == null)) {
          continue;
        }
        Object localObject;
        if (d == null)
        {
          localObject = metaData.get("com.facebook.sdk.ApplicationId");
          if (!(localObject instanceof String)) {
            break label98;
          }
          d = (String)localObject;
        }
        for (;;)
        {
          if (e == null) {
            e = metaData.getString("com.facebook.sdk.ApplicationName");
          }
          if (f != null) {
            break;
          }
          f = metaData.getString("com.facebook.sdk.ClientToken");
          return;
          label98:
          if ((localObject instanceof Integer)) {
            d = localObject.toString();
          }
        }
        return;
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
  }
  
  public static boolean c()
  {
    return j;
  }
  
  /* Error */
  public static String d(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 187	com/facebook/internal/v:b	()V
    //   3: aload_0
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: invokevirtual 207	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull -8 -> 7
    //   18: aload_0
    //   19: invokevirtual 210	android/content/Context:getPackageName	()Ljava/lang/String;
    //   22: astore_0
    //   23: aload_1
    //   24: aload_0
    //   25: bipush 64
    //   27: invokevirtual 256	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   30: astore_0
    //   31: aload_0
    //   32: getfield 262	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull -30 -> 7
    //   40: aload_1
    //   41: arraylength
    //   42: ifeq -35 -> 7
    //   45: ldc_w 264
    //   48: invokestatic 270	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   51: astore_1
    //   52: aload_1
    //   53: aload_0
    //   54: getfield 262	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   57: iconst_0
    //   58: aaload
    //   59: invokevirtual 276	android/content/pm/Signature:toByteArray	()[B
    //   62: invokevirtual 280	java/security/MessageDigest:update	([B)V
    //   65: aload_1
    //   66: invokevirtual 283	java/security/MessageDigest:digest	()[B
    //   69: bipush 9
    //   71: invokestatic 289	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   74: areturn
    //   75: astore_0
    //   76: aconst_null
    //   77: areturn
    //   78: astore_0
    //   79: aconst_null
    //   80: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	paramContext	Context
    //   13	53	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	31	75	android/content/pm/PackageManager$NameNotFoundException
    //   45	52	78	java/security/NoSuchAlgorithmException
  }
  
  public static Executor d()
  {
    synchronized (n)
    {
      if (c == null)
      {
        Executor localExecutor = m();
        Object localObject1 = localExecutor;
        if (localExecutor == null) {
          localObject1 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, o, p);
        }
        c = (Executor)localObject1;
      }
      return c;
    }
  }
  
  public static String e()
  {
    return g;
  }
  
  public static Context f()
  {
    v.b();
    return l;
  }
  
  public static long g()
  {
    v.b();
    return h.get();
  }
  
  public static String h()
  {
    v.b();
    return d;
  }
  
  public static String i()
  {
    v.b();
    return e;
  }
  
  public static String j()
  {
    v.b();
    return f;
  }
  
  public static File k()
  {
    v.b();
    return k;
  }
  
  public static int l()
  {
    v.b();
    return m;
  }
  
  private static Executor m()
  {
    try
    {
      Object localObject = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
      if ((localIllegalAccessException instanceof Executor)) {
        break label37;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        localObject = ((Field)localObject).get(null);
        if (localObject != null) {
          break label28;
        }
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return null;
      }
      localNoSuchFieldException = localNoSuchFieldException;
      return null;
    }
    label28:
    return null;
    label37:
    return (Executor)localIllegalAccessException;
  }
}

/* Location:
 * Qualified Name:     com.facebook.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */