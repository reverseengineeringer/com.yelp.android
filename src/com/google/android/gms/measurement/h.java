package com.google.android.gms.measurement;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kr;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class h
{
  private static volatile h a;
  private final Context b;
  private final List<i> c;
  private final c d;
  private final a e;
  private volatile kp f;
  private Thread.UncaughtExceptionHandler g;
  
  h(Context paramContext)
  {
    paramContext = paramContext.getApplicationContext();
    zzx.zzz(paramContext);
    b = paramContext;
    e = new a();
    c = new CopyOnWriteArrayList();
    d = new c();
  }
  
  public static h a(Context paramContext)
  {
    zzx.zzz(paramContext);
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new h(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  private void b(d paramd)
  {
    zzx.zzcE("deliver should be called from worker thread");
    zzx.zzb(paramd.f(), "Measurement must be submitted");
    Object localObject = paramd.c();
    if (((List)localObject).isEmpty()) {}
    for (;;)
    {
      return;
      HashSet localHashSet = new HashSet();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        j localj = (j)((Iterator)localObject).next();
        Uri localUri = localj.a();
        if (!localHashSet.contains(localUri))
        {
          localHashSet.add(localUri);
          localj.a(paramd);
        }
      }
    }
  }
  
  public static void d()
  {
    if (!(Thread.currentThread() instanceof c)) {
      throw new IllegalStateException("Call expected from worker thread");
    }
  }
  
  public kp a()
  {
    if (f == null) {}
    Object localObject5;
    Object localObject3;
    try
    {
      kp localkp;
      PackageManager localPackageManager;
      String str2;
      if (f == null)
      {
        localkp = new kp();
        localPackageManager = b.getPackageManager();
        str2 = b.getPackageName();
        localkp.c(str2);
        localkp.d(localPackageManager.getInstallerPackageName(str2));
        localObject5 = null;
        localObject3 = str2;
      }
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(b.getPackageName(), 0);
        localObject4 = localObject5;
        str1 = str2;
        if (localPackageInfo != null)
        {
          localObject3 = str2;
          localObject4 = localPackageManager.getApplicationLabel(applicationInfo);
          str1 = str2;
          localObject3 = str2;
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject3 = str2;
            str1 = ((CharSequence)localObject4).toString();
          }
          localObject3 = str1;
          localObject4 = versionName;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          String str1;
          Log.e("GAv4", "Error retrieving package info: appName set to " + (String)localObject3);
          Object localObject4 = localObject5;
          Object localObject1 = localObject3;
        }
      }
      localkp.a(str1);
      localkp.b((String)localObject4);
      f = localkp;
      return f;
    }
    finally {}
  }
  
  public <V> Future<V> a(Callable<V> paramCallable)
  {
    zzx.zzz(paramCallable);
    if ((Thread.currentThread() instanceof c))
    {
      paramCallable = new FutureTask(paramCallable);
      paramCallable.run();
      return paramCallable;
    }
    return e.submit(paramCallable);
  }
  
  void a(final d paramd)
  {
    if (paramd.j()) {
      throw new IllegalStateException("Measurement prototype can't be submitted");
    }
    if (paramd.f()) {
      throw new IllegalStateException("Measurement can only be submitted once");
    }
    paramd = paramd.a();
    paramd.g();
    e.execute(new Runnable()
    {
      public void run()
      {
        paramd.h().a(paramd);
        Iterator localIterator = h.a(h.this).iterator();
        while (localIterator.hasNext()) {
          ((i)localIterator.next()).a(paramd);
        }
        h.a(h.this, paramd);
      }
    });
  }
  
  public void a(Runnable paramRunnable)
  {
    zzx.zzz(paramRunnable);
    e.submit(paramRunnable);
  }
  
  public void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    g = paramUncaughtExceptionHandler;
  }
  
  public kr b()
  {
    DisplayMetrics localDisplayMetrics = b.getResources().getDisplayMetrics();
    kr localkr = new kr();
    localkr.a(n.a(Locale.getDefault()));
    localkr.b(widthPixels);
    localkr.c(heightPixels);
    return localkr;
  }
  
  public Context c()
  {
    return b;
  }
  
  private class a
    extends ThreadPoolExecutor
  {
    public a()
    {
      super(1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
      setThreadFactory(new h.b(null));
    }
    
    protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
    {
      new FutureTask(paramRunnable, paramT)
      {
        protected void setException(Throwable paramAnonymousThrowable)
        {
          Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = h.b(h.this);
          if (localUncaughtExceptionHandler != null) {
            localUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), paramAnonymousThrowable);
          }
          for (;;)
          {
            super.setException(paramAnonymousThrowable);
            return;
            if (Log.isLoggable("GAv4", 6)) {
              Log.e("GAv4", "MeasurementExecutor: job failed with " + paramAnonymousThrowable);
            }
          }
        }
      };
    }
  }
  
  private static class b
    implements ThreadFactory
  {
    private static final AtomicInteger a = new AtomicInteger();
    
    public Thread newThread(Runnable paramRunnable)
    {
      return new h.c(paramRunnable, "measurement-" + a.incrementAndGet());
    }
  }
  
  private static class c
    extends Thread
  {
    c(Runnable paramRunnable, String paramString)
    {
      super(paramString);
    }
    
    public void run()
    {
      Process.setThreadPriority(10);
      super.run();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */