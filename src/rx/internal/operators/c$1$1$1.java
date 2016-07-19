package rx.internal.operators;

import com.yelp.android.dg.a;
import rx.c;
import rx.d.a;

class c$1$1$1
  implements c
{
  c$1$1$1(c.1.1 param1, c paramc) {}
  
  public void request(final long paramLong)
  {
    if (b.a == Thread.currentThread())
    {
      a.request(paramLong);
      return;
    }
    b.b.b.a(new a()
    {
      public void call()
      {
        a.request(paramLong);
      }
    });
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.c.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */