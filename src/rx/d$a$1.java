package rx;

import com.yelp.android.dg.a;
import com.yelp.android.dm.c;
import java.util.concurrent.TimeUnit;

class d$a$1
  implements a
{
  long a;
  long b = d;
  long c = e;
  
  d$a$1(d.a parama, long paramLong1, long paramLong2, c paramc, a parama1, long paramLong3) {}
  
  public void call()
  {
    long l2;
    long l1;
    long l3;
    if (!f.isUnsubscribed())
    {
      g.call();
      l2 = TimeUnit.MILLISECONDS.toNanos(i.a());
      if ((d.a + l2 >= b) && (l2 < b + h + d.a)) {
        break label129;
      }
      l1 = h + l2;
      l3 = h;
      long l4 = a + 1L;
      a = l4;
      c = (l1 - l3 * l4);
    }
    for (;;)
    {
      b = l2;
      f.a(i.a(this, l1 - l2, TimeUnit.NANOSECONDS));
      return;
      label129:
      l1 = c;
      l3 = a + 1L;
      a = l3;
      l1 += l3 * h;
    }
  }
}

/* Location:
 * Qualified Name:     rx.d.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */