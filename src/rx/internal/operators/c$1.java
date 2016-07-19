package rx.internal.operators;

import rx.d.a;
import rx.e;

class c$1
  implements com.yelp.android.dg.a
{
  c$1(c paramc, e parame, d.a parama) {}
  
  public void call()
  {
    final Object localObject = Thread.currentThread();
    localObject = new e(a)
    {
      public void a()
      {
        try
        {
          a.a();
          return;
        }
        finally
        {
          b.unsubscribe();
        }
      }
      
      public void a(T paramAnonymousT)
      {
        a.a(paramAnonymousT);
      }
      
      public void a(Throwable paramAnonymousThrowable)
      {
        try
        {
          a.a(paramAnonymousThrowable);
          return;
        }
        finally
        {
          b.unsubscribe();
        }
      }
      
      public void a(final rx.c paramAnonymousc)
      {
        a.a(new rx.c()
        {
          public void request(final long paramAnonymous2Long)
          {
            if (a == Thread.currentThread())
            {
              paramAnonymousc.request(paramAnonymous2Long);
              return;
            }
            b.a(new com.yelp.android.dg.a()
            {
              public void call()
              {
                a.request(paramAnonymous2Long);
              }
            });
          }
        });
      }
    };
    c.b.a((e)localObject);
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */