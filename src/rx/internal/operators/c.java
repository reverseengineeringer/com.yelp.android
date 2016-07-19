package rx.internal.operators;

import rx.a.a;
import rx.d;
import rx.d.a;
import rx.e;

public final class c<T>
  implements a.a<T>
{
  final d a;
  final rx.a<T> b;
  
  public c(rx.a<T> parama, d paramd)
  {
    a = paramd;
    b = parama;
  }
  
  public void a(final e<? super T> parame)
  {
    final d.a locala = a.a();
    parame.a(locala);
    locala.a(new com.yelp.android.dg.a()
    {
      public void call()
      {
        final Object localObject = Thread.currentThread();
        localObject = new e(parame)
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
          
          public void a(T paramAnonymous2T)
          {
            a.a(paramAnonymous2T);
          }
          
          public void a(Throwable paramAnonymous2Throwable)
          {
            try
            {
              a.a(paramAnonymous2Throwable);
              return;
            }
            finally
            {
              b.unsubscribe();
            }
          }
          
          public void a(final rx.c paramAnonymous2c)
          {
            a.a(new rx.c()
            {
              public void request(final long paramAnonymous3Long)
              {
                if (a == Thread.currentThread())
                {
                  paramAnonymous2c.request(paramAnonymous3Long);
                  return;
                }
                b.a(new com.yelp.android.dg.a()
                {
                  public void call()
                  {
                    a.request(paramAnonymous3Long);
                  }
                });
              }
            });
          }
        };
        b.a((e)localObject);
      }
    });
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */