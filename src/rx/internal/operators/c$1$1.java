package rx.internal.operators;

import com.yelp.android.dg.a;
import rx.c;
import rx.d.a;
import rx.e;

class c$1$1
  extends e<T>
{
  c$1$1(c.1 param1, e parame, Thread paramThread)
  {
    super(parame);
  }
  
  public void a()
  {
    try
    {
      b.a.a();
      return;
    }
    finally
    {
      b.b.unsubscribe();
    }
  }
  
  public void a(T paramT)
  {
    b.a.a(paramT);
  }
  
  public void a(Throwable paramThrowable)
  {
    try
    {
      b.a.a(paramThrowable);
      return;
    }
    finally
    {
      b.b.unsubscribe();
    }
  }
  
  public void a(final c paramc)
  {
    b.a.a(new c()
    {
      public void request(final long paramAnonymousLong)
      {
        if (a == Thread.currentThread())
        {
          paramc.request(paramAnonymousLong);
          return;
        }
        b.b.a(new a()
        {
          public void call()
          {
            a.request(paramAnonymousLong);
          }
        });
      }
    });
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.c.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */