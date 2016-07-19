package rx.internal.operators;

import com.yelp.android.dh.b;
import com.yelp.android.di.r;
import com.yelp.android.di.y;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.c;
import rx.d.a;
import rx.e;
import rx.exceptions.MissingBackpressureException;

final class b$a<T>
  extends e<T>
  implements com.yelp.android.dg.a
{
  final e<? super T> a;
  final d.a b;
  final NotificationLite<T> c;
  final boolean d;
  final Queue<Object> e;
  final int f;
  volatile boolean g;
  final AtomicLong h = new AtomicLong();
  final AtomicLong i = new AtomicLong();
  Throwable j;
  long k;
  
  public b$a(rx.d paramd, e<? super T> parame, boolean paramBoolean, int paramInt)
  {
    a = parame;
    b = paramd.a();
    d = paramBoolean;
    c = NotificationLite.a();
    if (paramInt > 0)
    {
      f = (paramInt - (paramInt >> 2));
      if (!y.a()) {
        break label102;
      }
    }
    label102:
    for (e = new r(paramInt);; e = new b(paramInt))
    {
      a(paramInt);
      return;
      paramInt = rx.internal.util.d.b;
      break;
    }
  }
  
  public void a()
  {
    if ((isUnsubscribed()) || (g)) {
      return;
    }
    g = true;
    d();
  }
  
  public void a(T paramT)
  {
    if ((isUnsubscribed()) || (g)) {
      return;
    }
    if (!e.offer(c.a(paramT)))
    {
      a(new MissingBackpressureException());
      return;
    }
    d();
  }
  
  public void a(Throwable paramThrowable)
  {
    if ((isUnsubscribed()) || (g))
    {
      com.yelp.android.dk.d.a().b().a(paramThrowable);
      return;
    }
    j = paramThrowable;
    g = true;
    d();
  }
  
  boolean a(boolean paramBoolean1, boolean paramBoolean2, e<? super T> parame, Queue<Object> paramQueue)
  {
    if (parame.isUnsubscribed())
    {
      paramQueue.clear();
      return true;
    }
    if (paramBoolean1)
    {
      if (!d) {
        break label74;
      }
      if (paramBoolean2)
      {
        paramQueue = j;
        if (paramQueue == null) {
          break label57;
        }
      }
    }
    label57:
    label74:
    do
    {
      for (;;)
      {
        try
        {
          parame.a(paramQueue);
          return false;
        }
        finally
        {
          b.unsubscribe();
        }
        parame.a();
      }
      Throwable localThrowable = j;
      if (localThrowable != null)
      {
        paramQueue.clear();
        try
        {
          parame.a(localThrowable);
          return true;
        }
        finally
        {
          b.unsubscribe();
        }
      }
    } while (!paramBoolean2);
    try
    {
      parame.a();
      return true;
    }
    finally
    {
      b.unsubscribe();
    }
  }
  
  void c()
  {
    e locale = a;
    locale.a(new c()
    {
      public void request(long paramAnonymousLong)
      {
        if (paramAnonymousLong > 0L)
        {
          a.a(h, paramAnonymousLong);
          d();
        }
      }
    });
    locale.a(b);
    locale.a(this);
  }
  
  public void call()
  {
    long l3 = 1L;
    long l2 = k;
    Queue localQueue = e;
    e locale = a;
    NotificationLite localNotificationLite = c;
    Object localObject;
    label85:
    do
    {
      l1 = h.get();
      if (l1 != l2)
      {
        bool2 = g;
        localObject = localQueue.poll();
        if (localObject == null)
        {
          bool1 = true;
          if (!a(bool2, bool1, locale, localQueue)) {
            break label85;
          }
        }
      }
      while ((l1 == l2) && (a(g, localQueue.isEmpty(), locale, localQueue)))
      {
        boolean bool1;
        for (;;)
        {
          boolean bool2;
          return;
          bool1 = false;
        }
        if (!bool1) {
          break label144;
        }
      }
      k = l2;
      l1 = i.addAndGet(-l3);
      l3 = l1;
    } while (l1 != 0L);
    return;
    label144:
    locale.a(localNotificationLite.b(localObject));
    long l4 = 1L + l2;
    if (l4 == f)
    {
      l2 = a.b(h, l4);
      a(l4);
    }
    for (long l1 = 0L;; l1 = l4)
    {
      l4 = l2;
      l2 = l1;
      l1 = l4;
      break;
      l2 = l1;
    }
  }
  
  protected void d()
  {
    if (i.getAndIncrement() == 0L) {
      b.a(this);
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */