package rx.internal.util;

import com.yelp.android.di.y;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a;

public abstract class a<T>
{
  Queue<T> a;
  final int b;
  final int c;
  private final long d;
  private final AtomicReference<d.a> e;
  
  public a()
  {
    this(0, 0, 67L);
  }
  
  private a(int paramInt1, int paramInt2, long paramLong)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramLong;
    e = new AtomicReference();
    a(paramInt1);
    a();
  }
  
  private void a(int paramInt)
  {
    if (y.a()) {}
    for (a = new com.yelp.android.di.d(Math.max(c, 1024));; a = new ConcurrentLinkedQueue())
    {
      int i = 0;
      while (i < paramInt)
      {
        a.add(b());
        i += 1;
      }
    }
  }
  
  public void a()
  {
    d.a locala = com.yelp.android.dl.d.a().a();
    if (e.compareAndSet(null, locala))
    {
      locala.a(new com.yelp.android.dg.a()
      {
        public void call()
        {
          int j = 0;
          int i = 0;
          int k = a.size();
          if (k < b)
          {
            j = c;
            while (i < j - k)
            {
              a.add(b());
              i += 1;
            }
          }
          if (k > c)
          {
            int m = c;
            i = j;
            while (i < k - m)
            {
              a.poll();
              i += 1;
            }
          }
        }
      }, d, d, TimeUnit.SECONDS);
      return;
    }
    locala.unsubscribe();
  }
  
  public void a(T paramT)
  {
    if (paramT == null) {
      return;
    }
    a.offer(paramT);
  }
  
  protected abstract T b();
}

/* Location:
 * Qualified Name:     rx.internal.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */