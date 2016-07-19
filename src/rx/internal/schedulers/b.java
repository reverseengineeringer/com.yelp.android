package rx.internal.schedulers;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a;
import rx.f;
import rx.internal.util.RxThreadFactory;

public class b
  extends d.a
  implements f
{
  public static final int b;
  private static final boolean e;
  private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f = new ConcurrentHashMap();
  private static final AtomicReference<ScheduledExecutorService> g = new AtomicReference();
  private static volatile Object h;
  private static final Object i;
  volatile boolean a;
  private final ScheduledExecutorService c;
  private final com.yelp.android.dk.e d;
  
  static
  {
    b = Integer.getInteger("rx.scheduler.jdk6.purge-frequency-millis", 1000).intValue();
    boolean bool = Boolean.getBoolean("rx.scheduler.jdk6.purge-force");
    int j = rx.internal.util.b.b();
    if ((!bool) && ((j == 0) || (j >= 21))) {}
    for (bool = true;; bool = false)
    {
      e = bool;
      i = new Object();
      return;
    }
  }
  
  public b(ThreadFactory paramThreadFactory)
  {
    paramThreadFactory = Executors.newScheduledThreadPool(1, paramThreadFactory);
    if ((!b(paramThreadFactory)) && ((paramThreadFactory instanceof ScheduledThreadPoolExecutor))) {
      a((ScheduledThreadPoolExecutor)paramThreadFactory);
    }
    d = com.yelp.android.dk.d.a().d();
    c = paramThreadFactory;
  }
  
  public static void a(ScheduledExecutorService paramScheduledExecutorService)
  {
    f.remove(paramScheduledExecutorService);
  }
  
  public static void a(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
  {
    for (;;)
    {
      if ((ScheduledExecutorService)g.get() != null) {}
      ScheduledExecutorService localScheduledExecutorService;
      for (;;)
      {
        f.putIfAbsent(paramScheduledThreadPoolExecutor, paramScheduledThreadPoolExecutor);
        return;
        localScheduledExecutorService = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge-"));
        if (!g.compareAndSet(null, localScheduledExecutorService)) {
          break;
        }
        localScheduledExecutorService.scheduleAtFixedRate(new Runnable()
        {
          public void run() {}
        }, b, b, TimeUnit.MILLISECONDS);
      }
      localScheduledExecutorService.shutdownNow();
    }
  }
  
  static void b()
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = f.keySet().iterator();
        if (localIterator.hasNext())
        {
          ScheduledThreadPoolExecutor localScheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor)localIterator.next();
          if (!localScheduledThreadPoolExecutor.isShutdown()) {
            localScheduledThreadPoolExecutor.purge();
          }
        }
        else
        {
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        rx.exceptions.a.a(localThrowable);
        com.yelp.android.dk.d.a().b().a(localThrowable);
      }
      localThrowable.remove();
    }
  }
  
  public static boolean b(ScheduledExecutorService paramScheduledExecutorService)
  {
    if (e)
    {
      Object localObject1;
      Object localObject2;
      if ((paramScheduledExecutorService instanceof ScheduledThreadPoolExecutor))
      {
        localObject1 = h;
        if (localObject1 == i) {
          return false;
        }
        if (localObject1 == null)
        {
          localObject1 = c(paramScheduledExecutorService);
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            h = localObject2;
          }
        }
      }
      for (;;)
      {
        if (localObject1 == null) {
          break label102;
        }
        try
        {
          ((Method)localObject1).invoke(paramScheduledExecutorService, new Object[] { Boolean.valueOf(true) });
          return true;
        }
        catch (Exception paramScheduledExecutorService)
        {
          com.yelp.android.dk.d.a().b().a(paramScheduledExecutorService);
        }
        localObject2 = i;
        break;
        localObject1 = (Method)localObject1;
        continue;
        localObject1 = c(paramScheduledExecutorService);
      }
    }
    label102:
    return false;
  }
  
  static Method c(ScheduledExecutorService paramScheduledExecutorService)
  {
    paramScheduledExecutorService = paramScheduledExecutorService.getClass().getMethods();
    int k = paramScheduledExecutorService.length;
    int j = 0;
    while (j < k)
    {
      Method localMethod = paramScheduledExecutorService[j];
      if (localMethod.getName().equals("setRemoveOnCancelPolicy"))
      {
        Class[] arrayOfClass = localMethod.getParameterTypes();
        if ((arrayOfClass.length == 1) && (arrayOfClass[0] == Boolean.TYPE)) {
          return localMethod;
        }
      }
      j += 1;
    }
    return null;
  }
  
  public f a(com.yelp.android.dg.a parama)
  {
    return a(parama, 0L, null);
  }
  
  public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (a) {
      return com.yelp.android.dm.d.b();
    }
    return b(parama, paramLong, paramTimeUnit);
  }
  
  public ScheduledAction a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit, com.yelp.android.dm.b paramb)
  {
    ScheduledAction localScheduledAction = new ScheduledAction(d.a(parama), paramb);
    paramb.a(localScheduledAction);
    if (paramLong <= 0L) {}
    for (parama = c.submit(localScheduledAction);; parama = c.schedule(localScheduledAction, paramLong, paramTimeUnit))
    {
      localScheduledAction.add(parama);
      return localScheduledAction;
    }
  }
  
  public ScheduledAction a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit, rx.internal.util.e parame)
  {
    ScheduledAction localScheduledAction = new ScheduledAction(d.a(parama), parame);
    parame.a(localScheduledAction);
    if (paramLong <= 0L) {}
    for (parama = c.submit(localScheduledAction);; parama = c.schedule(localScheduledAction, paramLong, paramTimeUnit))
    {
      localScheduledAction.add(parama);
      return localScheduledAction;
    }
  }
  
  public ScheduledAction b(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    ScheduledAction localScheduledAction = new ScheduledAction(d.a(parama));
    if (paramLong <= 0L) {}
    for (parama = c.submit(localScheduledAction);; parama = c.schedule(localScheduledAction, paramLong, paramTimeUnit))
    {
      localScheduledAction.add(parama);
      return localScheduledAction;
    }
  }
  
  public boolean isUnsubscribed()
  {
    return a;
  }
  
  public void unsubscribe()
  {
    a = true;
    c.shutdownNow();
    a(c);
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */