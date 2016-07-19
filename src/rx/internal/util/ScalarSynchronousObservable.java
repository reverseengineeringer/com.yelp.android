package rx.internal.util;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.a.a;
import rx.c;
import rx.d;
import rx.d.a;
import rx.f;

public final class ScalarSynchronousObservable<T>
  extends rx.a<T>
{
  static final boolean c = Boolean.valueOf(System.getProperty("rx.just.strong-mode", "false")).booleanValue();
  final T d;
  
  public rx.a<T> c(final d paramd)
  {
    if ((paramd instanceof rx.internal.schedulers.a)) {}
    for (paramd = new com.yelp.android.dg.e()
        {
          public f a(com.yelp.android.dg.a paramAnonymousa)
          {
            return paramd.a(paramAnonymousa);
          }
        };; paramd = new com.yelp.android.dg.e()
        {
          public f a(final com.yelp.android.dg.a paramAnonymousa)
          {
            final d.a locala = paramd.a();
            locala.a(new com.yelp.android.dg.a()
            {
              public void call()
              {
                try
                {
                  paramAnonymousa.call();
                  return;
                }
                finally
                {
                  locala.unsubscribe();
                }
              }
            });
            return locala;
          }
        }) {
      return a(new a(d, paramd));
    }
  }
  
  static final class ScalarAsyncProducer<T>
    extends AtomicBoolean
    implements com.yelp.android.dg.a, c
  {
    private static final long serialVersionUID = -2466317989629281651L;
    final rx.e<? super T> actual;
    final com.yelp.android.dg.e<com.yelp.android.dg.a, f> onSchedule;
    final T value;
    
    public ScalarAsyncProducer(rx.e<? super T> parame, T paramT, com.yelp.android.dg.e<com.yelp.android.dg.a, f> parame1)
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
  
  static final class a<T>
    implements a.a<T>
  {
    final T a;
    final com.yelp.android.dg.e<com.yelp.android.dg.a, f> b;
    
    a(T paramT, com.yelp.android.dg.e<com.yelp.android.dg.a, f> parame)
    {
      a = paramT;
      b = parame;
    }
    
    public void a(rx.e<? super T> parame)
    {
      parame.a(new ScalarSynchronousObservable.ScalarAsyncProducer(parame, a, b));
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.ScalarSynchronousObservable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */