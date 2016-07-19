package io.fabric.sdk.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
{
  static volatile c a;
  static final k b = new b();
  final k c;
  final boolean d;
  private final Context e;
  private final Map<Class<? extends h>, h> f;
  private final ExecutorService g;
  private final Handler h;
  private final f<c> i;
  private final f<?> j;
  private final IdManager k;
  private a l;
  private WeakReference<Activity> m;
  private AtomicBoolean n;
  
  c(Context paramContext, Map<Class<? extends h>, h> paramMap, io.fabric.sdk.android.services.concurrency.h paramh, Handler paramHandler, k paramk, boolean paramBoolean, f paramf, IdManager paramIdManager)
  {
    e = paramContext;
    f = paramMap;
    g = paramh;
    h = paramHandler;
    c = paramk;
    d = paramBoolean;
    i = paramf;
    n = new AtomicBoolean(false);
    j = a(paramMap.size());
    k = paramIdManager;
  }
  
  static c a()
  {
    if (a == null) {
      throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }
    return a;
  }
  
  public static c a(Context paramContext, h... paramVarArgs)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        c(new a(paramContext).a(paramVarArgs).a());
      }
      return a;
    }
    finally {}
  }
  
  public static <T extends h> T a(Class<T> paramClass)
  {
    return (h)af.get(paramClass);
  }
  
  private static void a(Map<Class<? extends h>, h> paramMap, Collection<? extends h> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      h localh = (h)paramCollection.next();
      paramMap.put(localh.getClass(), localh);
      if ((localh instanceof i)) {
        a(paramMap, ((i)localh).c());
      }
    }
  }
  
  private static Map<Class<? extends h>, h> b(Collection<? extends h> paramCollection)
  {
    HashMap localHashMap = new HashMap(paramCollection.size());
    a(localHashMap, paramCollection);
    return localHashMap;
  }
  
  private Activity c(Context paramContext)
  {
    if ((paramContext instanceof Activity)) {
      return (Activity)paramContext;
    }
    return null;
  }
  
  private static void c(c paramc)
  {
    a = paramc;
    paramc.j();
  }
  
  public static k h()
  {
    if (a == null) {
      return b;
    }
    return ac;
  }
  
  public static boolean i()
  {
    if (a == null) {
      return false;
    }
    return ad;
  }
  
  private void j()
  {
    a(c(e));
    l = new a(e);
    l.a(new a.b()
    {
      public void a(Activity paramAnonymousActivity)
      {
        a(paramAnonymousActivity);
      }
      
      public void a(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
      {
        a(paramAnonymousActivity);
      }
      
      public void b(Activity paramAnonymousActivity)
      {
        a(paramAnonymousActivity);
      }
    });
    a(e);
  }
  
  public c a(Activity paramActivity)
  {
    m = new WeakReference(paramActivity);
    return this;
  }
  
  f<?> a(final int paramInt)
  {
    new f()
    {
      final CountDownLatch a = new CountDownLatch(paramInt);
      
      public void a(Exception paramAnonymousException)
      {
        c.b(c.this).a(paramAnonymousException);
      }
      
      public void a(Object paramAnonymousObject)
      {
        a.countDown();
        if (a.getCount() == 0L)
        {
          c.a(c.this).set(true);
          c.b(c.this).a(c.this);
        }
      }
    };
  }
  
  void a(Context paramContext)
  {
    Object localObject1 = b(paramContext);
    Object localObject2 = g();
    localObject1 = new l((Future)localObject1, (Collection)localObject2);
    localObject2 = new ArrayList((Collection)localObject2);
    Collections.sort((List)localObject2);
    ((l)localObject1).a(paramContext, this, f.d, k);
    Object localObject3 = ((List)localObject2).iterator();
    while (((Iterator)localObject3).hasNext()) {
      ((h)((Iterator)localObject3).next()).a(paramContext, this, j, k);
    }
    ((l)localObject1).z();
    if (h().a("Fabric", 3)) {}
    for (paramContext = new StringBuilder("Initializing ").append(d()).append(" [Version: ").append(c()).append("], with the following kits:\n");; paramContext = null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (h)((Iterator)localObject2).next();
        f.a(f);
        a(f, (h)localObject3);
        ((h)localObject3).z();
        if (paramContext != null) {
          paramContext.append(((h)localObject3).b()).append(" [Version: ").append(((h)localObject3).a()).append("]\n");
        }
      }
    }
    if (paramContext != null) {
      h().a("Fabric", paramContext.toString());
    }
  }
  
  void a(Map<Class<? extends h>, h> paramMap, h paramh)
  {
    Object localObject1 = (io.fabric.sdk.android.services.concurrency.b)paramh.getClass().getAnnotation(io.fabric.sdk.android.services.concurrency.b.class);
    if (localObject1 != null)
    {
      localObject1 = ((io.fabric.sdk.android.services.concurrency.b)localObject1).a();
      int i2 = localObject1.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        if (((Class)localObject2).isInterface())
        {
          Iterator localIterator = paramMap.values().iterator();
          while (localIterator.hasNext())
          {
            h localh = (h)localIterator.next();
            if (((Class)localObject2).isAssignableFrom(localh.getClass())) {
              f.a(f);
            }
          }
        }
        if ((h)paramMap.get(localObject2) == null) {
          throw new UnmetDependencyException("Referenced Kit was null, does the kit exist?");
        }
        f.a(getf);
        i1 += 1;
      }
    }
  }
  
  public Activity b()
  {
    if (m != null) {
      return (Activity)m.get();
    }
    return null;
  }
  
  Future<Map<String, j>> b(Context paramContext)
  {
    paramContext = new e(paramContext.getPackageCodePath());
    return f().submit(paramContext);
  }
  
  public String c()
  {
    return "1.3.4.60";
  }
  
  public String d()
  {
    return "io.fabric.sdk.android:fabric";
  }
  
  public a e()
  {
    return l;
  }
  
  public ExecutorService f()
  {
    return g;
  }
  
  public Collection<h> g()
  {
    return f.values();
  }
  
  public static class a
  {
    private final Context a;
    private h[] b;
    private io.fabric.sdk.android.services.concurrency.h c;
    private Handler d;
    private k e;
    private boolean f;
    private String g;
    private String h;
    private f<c> i;
    
    public a(Context paramContext)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null.");
      }
      a = paramContext.getApplicationContext();
    }
    
    public a a(h... paramVarArgs)
    {
      if (b != null) {
        throw new IllegalStateException("Kits already set.");
      }
      b = paramVarArgs;
      return this;
    }
    
    public c a()
    {
      if (c == null) {
        c = io.fabric.sdk.android.services.concurrency.h.a();
      }
      if (d == null) {
        d = new Handler(Looper.getMainLooper());
      }
      if (e == null)
      {
        if (f) {
          e = new b(3);
        }
      }
      else
      {
        if (h == null) {
          h = a.getPackageName();
        }
        if (i == null) {
          i = f.d;
        }
        if (b != null) {
          break label182;
        }
      }
      label182:
      for (Object localObject = new HashMap();; localObject = c.a(Arrays.asList(b)))
      {
        IdManager localIdManager = new IdManager(a, h, g, ((Map)localObject).values());
        return new c(a, (Map)localObject, c, d, e, f, i, localIdManager);
        e = new b();
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */