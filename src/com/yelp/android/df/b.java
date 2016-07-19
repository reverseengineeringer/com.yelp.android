package com.yelp.android.df;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.d.a;
import rx.f;
import rx.internal.schedulers.ScheduledAction;

public final class b
  extends rx.d
{
  private final Handler b;
  
  b(Handler paramHandler)
  {
    b = paramHandler;
  }
  
  public d.a a()
  {
    return new a(b);
  }
  
  static class a
    extends d.a
  {
    private final Handler a;
    private final com.yelp.android.dm.b b = new com.yelp.android.dm.b();
    
    a(Handler paramHandler)
    {
      a = paramHandler;
    }
    
    public f a(com.yelp.android.dg.a parama)
    {
      return a(parama, 0L, TimeUnit.MILLISECONDS);
    }
    
    public f a(final com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
    {
      if (b.isUnsubscribed()) {
        return com.yelp.android.dm.d.b();
      }
      parama = new ScheduledAction(com.yelp.android.de.a.a().b().a(parama));
      parama.addParent(b);
      b.a(parama);
      a.postDelayed(parama, paramTimeUnit.toMillis(paramLong));
      parama.add(com.yelp.android.dm.d.a(new com.yelp.android.dg.a()
      {
        public void call()
        {
          b.a.a(b.a.this).removeCallbacks(parama);
        }
      }));
      return parama;
    }
    
    public boolean isUnsubscribed()
    {
      return b.isUnsubscribed();
    }
    
    public void unsubscribe()
    {
      b.unsubscribe();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.df.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */