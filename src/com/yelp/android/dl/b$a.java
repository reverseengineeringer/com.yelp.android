package com.yelp.android.dl;

import com.yelp.android.dm.d;
import java.util.concurrent.TimeUnit;
import rx.d.a;
import rx.f;

class b$a
  extends d.a
  implements f
{
  final com.yelp.android.dm.a a = new com.yelp.android.dm.a();
  
  b$a(b paramb) {}
  
  public f a(com.yelp.android.dg.a parama)
  {
    parama.call();
    return d.b();
  }
  
  public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    return a(new e(parama, this, b.b() + paramTimeUnit.toMillis(paramLong)));
  }
  
  public boolean isUnsubscribed()
  {
    return a.isUnsubscribed();
  }
  
  public void unsubscribe()
  {
    a.unsubscribe();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */