package rx;

import com.yelp.android.dg.a;
import com.yelp.android.dm.c;
import java.util.concurrent.TimeUnit;

public abstract class d
{
  static final long a = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15L).longValue());
  
  public abstract a a();
  
  public long b()
  {
    return System.currentTimeMillis();
  }
  
  public static abstract class a
    implements f
  {
    public long a()
    {
      return System.currentTimeMillis();
    }
    
    public abstract f a(a parama);
    
    public f a(a parama, long paramLong1, final long paramLong2, TimeUnit paramTimeUnit)
    {
      paramLong2 = paramTimeUnit.toNanos(paramLong2);
      final long l1 = TimeUnit.MILLISECONDS.toNanos(a());
      long l2 = paramTimeUnit.toNanos(paramLong1);
      final c localc1 = new c();
      parama = new a()
      {
        long a;
        long b = l1;
        long c = localc1;
        
        public void call()
        {
          long l2;
          long l1;
          long l3;
          if (!paramLong2.isUnsubscribed())
          {
            g.call();
            l2 = TimeUnit.MILLISECONDS.toNanos(a());
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
            paramLong2.a(a(this, l1 - l2, TimeUnit.NANOSECONDS));
            return;
            label129:
            l1 = c;
            l3 = a + 1L;
            a = l3;
            l1 += l3 * h;
          }
        }
      };
      c localc2 = new c();
      localc1.a(localc2);
      localc2.a(a(parama, paramLong1, paramTimeUnit));
      return localc1;
    }
    
    public abstract f a(a parama, long paramLong, TimeUnit paramTimeUnit);
  }
}

/* Location:
 * Qualified Name:     rx.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */