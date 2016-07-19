package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a;
import rx.f;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.e;

public class a
  extends rx.d
{
  static final RxThreadFactory b = new RxThreadFactory("RxComputationThreadPool-");
  static final int c;
  static final c d;
  static final b e = new b(0);
  final AtomicReference<b> f = new AtomicReference(e);
  
  static
  {
    int j = Integer.getInteger("rx.scheduler.max-computation-threads", 0).intValue();
    int k = Runtime.getRuntime().availableProcessors();
    int i;
    if (j > 0)
    {
      i = j;
      if (j <= k) {}
    }
    else
    {
      i = k;
    }
    c = i;
    d = new c(new RxThreadFactory("RxComputationShutdown-"));
    d.unsubscribe();
  }
  
  public a()
  {
    c();
  }
  
  public d.a a()
  {
    return new a(((b)f.get()).a());
  }
  
  public f a(com.yelp.android.dg.a parama)
  {
    return ((b)f.get()).a().b(parama, -1L, TimeUnit.NANOSECONDS);
  }
  
  public void c()
  {
    b localb = new b(c);
    if (!f.compareAndSet(e, localb)) {
      localb.b();
    }
  }
  
  private static class a
    extends d.a
  {
    private final e a = new e();
    private final com.yelp.android.dm.b b = new com.yelp.android.dm.b();
    private final e c = new e(new f[] { a, b });
    private final a.c d;
    
    a(a.c paramc)
    {
      d = paramc;
    }
    
    public f a(com.yelp.android.dg.a parama)
    {
      if (isUnsubscribed()) {
        return com.yelp.android.dm.d.b();
      }
      return d.a(parama, 0L, null, a);
    }
    
    public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
    {
      if (isUnsubscribed()) {
        return com.yelp.android.dm.d.b();
      }
      return d.a(parama, paramLong, paramTimeUnit, b);
    }
    
    public boolean isUnsubscribed()
    {
      return c.isUnsubscribed();
    }
    
    public void unsubscribe()
    {
      c.unsubscribe();
    }
  }
  
  static final class b
  {
    final int a;
    final a.c[] b;
    long c;
    
    b(int paramInt)
    {
      a = paramInt;
      b = new a.c[paramInt];
      int i = 0;
      while (i < paramInt)
      {
        b[i] = new a.c(a.b);
        i += 1;
      }
    }
    
    public a.c a()
    {
      int i = a;
      if (i == 0) {
        return a.d;
      }
      a.c[] arrayOfc = b;
      long l = c;
      c = (1L + l);
      return arrayOfc[((int)(l % i))];
    }
    
    public void b()
    {
      a.c[] arrayOfc = b;
      int j = arrayOfc.length;
      int i = 0;
      while (i < j)
      {
        arrayOfc[i].unsubscribe();
        i += 1;
      }
    }
  }
  
  static final class c
    extends b
  {
    c(ThreadFactory paramThreadFactory)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */