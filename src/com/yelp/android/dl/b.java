package com.yelp.android.dl;

import java.util.concurrent.TimeUnit;
import rx.d.a;
import rx.f;

public final class b
  extends rx.d
{
  private static final b b = new b();
  
  public d.a a()
  {
    return new a();
  }
  
  private class a
    extends d.a
    implements f
  {
    final com.yelp.android.dm.a a = new com.yelp.android.dm.a();
    
    a() {}
    
    public f a(com.yelp.android.dg.a parama)
    {
      parama.call();
      return com.yelp.android.dm.d.b();
    }
    
    public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
    {
      return a(new e(parama, this, b() + paramTimeUnit.toMillis(paramLong)));
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
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */