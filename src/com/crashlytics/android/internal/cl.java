package com.crashlytics.android.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class cl
  extends ch
{
  private by a = new b(ce.a);
  private AtomicReference<ci> b = new AtomicReference();
  private boolean c;
  private File d;
  private Application e;
  private WeakReference<Activity> f;
  private String g;
  private int h = 4;
  private ConcurrentHashMap<Class<? extends ck>, ck> i = new ConcurrentHashMap();
  
  public static cl a()
  {
    return co.a();
  }
  
  private cl a(Activity paramActivity)
  {
    f = new WeakReference(paramActivity);
    return this;
  }
  
  public static void a(Context paramContext, ck... paramVarArgs)
  {
    for (;;)
    {
      try
      {
        boolean bool = co.a().x();
        if (bool) {
          return;
        }
        cl localcl = co.a();
        e = cj.b(paramContext);
        localcl = localcl.a(cj.a(paramContext));
        int k = paramVarArgs.length;
        int j = 0;
        if (j < k)
        {
          ck localck = paramVarArgs[j];
          if (!i.containsKey(paramVarArgs)) {
            i.putIfAbsent(localck.getClass(), localck);
          }
        }
        else
        {
          localcl.b(paramContext);
          continue;
        }
        j += 1;
      }
      finally {}
    }
  }
  
  public final <T extends ck> T a(Class<T> paramClass)
  {
    return (ck)i.get(paramClass);
  }
  
  public final void a(ci paramci)
  {
    b.set(paramci);
  }
  
  public final ci b()
  {
    Object localObject2 = (ci)b.get();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = new cj();
      localObject1 = localObject2;
      if (!b.compareAndSet(null, localObject2)) {
        localObject1 = (ci)b.get();
      }
    }
    return (ci)localObject1;
  }
  
  public final Application c()
  {
    return e;
  }
  
  public final Activity d()
  {
    if (f != null) {
      return (Activity)f.get();
    }
    return null;
  }
  
  protected final void e()
  {
    Context localContext = w();
    d = new File(localContext.getFilesDir(), "com.crashlytics.sdk.android");
    if (!d.exists()) {
      d.mkdirs();
    }
    if (Build.VERSION.SDK_INT >= 14) {
      cm.a(new cm(this, (byte)0), e);
    }
    Object localObject;
    if ((c) && (Log.isLoggable("CrashlyticsInternal", 3)))
    {
      localObject = new StringBuilder();
      Iterator localIterator = i.values().iterator();
      while (localIterator.hasNext())
      {
        ch localch = (ch)localIterator.next();
        long l = System.nanoTime();
        localch.b(localContext);
        ((StringBuilder)localObject).append("sdkPerfStart.").append(localch.getClass().getName()).append('=').append(System.nanoTime() - l).append('\n');
      }
      Log.d("CrashlyticsInternal", ((StringBuilder)localObject).toString());
    }
    for (;;)
    {
      return;
      localObject = i.values().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ch)((Iterator)localObject).next()).b(localContext);
      }
    }
  }
  
  public final String f()
  {
    return "1.1.13.29";
  }
  
  public final boolean g()
  {
    return c;
  }
  
  public final int h()
  {
    return h;
  }
  
  public final File i()
  {
    return d;
  }
  
  public final String j()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */