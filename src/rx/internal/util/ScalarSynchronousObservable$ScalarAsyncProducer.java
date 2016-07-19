package rx.internal.util;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.c;
import rx.f;

final class ScalarSynchronousObservable$ScalarAsyncProducer<T>
  extends AtomicBoolean
  implements com.yelp.android.dg.a, c
{
  private static final long serialVersionUID = -2466317989629281651L;
  final rx.e<? super T> actual;
  final com.yelp.android.dg.e<com.yelp.android.dg.a, f> onSchedule;
  final T value;
  
  public ScalarSynchronousObservable$ScalarAsyncProducer(rx.e<? super T> parame, T paramT, com.yelp.android.dg.e<com.yelp.android.dg.a, f> parame1)
  {
    actual = parame;
    value = paramT;
    onSchedule = parame1;
  }
  
  public void call()
  {
    rx.e locale = actual;
    if (locale.isUnsubscribed()) {}
    for (;;)
    {
      return;
      Object localObject = value;
      try
      {
        locale.a(localObject);
        if (!locale.isUnsubscribed())
        {
          locale.a();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        rx.exceptions.a.a(localThrowable, locale, localObject);
      }
    }
  }
  
  public void request(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("n >= 0 required but it was " + paramLong);
    }
    if ((paramLong != 0L) && (compareAndSet(false, true))) {
      actual.a((f)onSchedule.call(this));
    }
  }
  
  public String toString()
  {
    return "ScalarAsyncProducer[" + value + ", " + get() + "]";
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.ScalarSynchronousObservable.ScalarAsyncProducer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */