package rx.internal.schedulers;

import com.yelp.android.dg.a;
import com.yelp.android.dm.b;
import com.yelp.android.dm.d;
import java.util.concurrent.TimeUnit;
import rx.d.a;
import rx.f;
import rx.internal.util.e;

class a$a
  extends d.a
{
  private final e a = new e();
  private final b b = new b();
  private final e c = new e(new f[] { a, b });
  private final a.c d;
  
  a$a(a.c paramc)
  {
    d = paramc;
  }
  
  public f a(a parama)
  {
    if (isUnsubscribed()) {
      return d.b();
    }
    return d.a(parama, 0L, null, a);
  }
  
  public f a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (isUnsubscribed()) {
      return d.b();
    }
    return d.a(parama, paramLong, paramTimeUnit, b);
  }
  
  public boolean isUnsubscribed()
  {
    return c.isUnsubscribed();
  }
  
  public void unsubscribe()
  {
    c.unsubscribe();
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */