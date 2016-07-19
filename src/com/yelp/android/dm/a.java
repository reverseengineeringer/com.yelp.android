package com.yelp.android.dm;

import java.util.concurrent.atomic.AtomicReference;
import rx.f;

public final class a
  implements f
{
  static final com.yelp.android.dg.a b = new com.yelp.android.dg.a()
  {
    public void call() {}
  };
  final AtomicReference<com.yelp.android.dg.a> a;
  
  public a()
  {
    a = new AtomicReference();
  }
  
  private a(com.yelp.android.dg.a parama)
  {
    a = new AtomicReference(parama);
  }
  
  public static a a()
  {
    return new a();
  }
  
  public static a a(com.yelp.android.dg.a parama)
  {
    return new a(parama);
  }
  
  public boolean isUnsubscribed()
  {
    return a.get() == b;
  }
  
  public final void unsubscribe()
  {
    if ((com.yelp.android.dg.a)a.get() != b)
    {
      com.yelp.android.dg.a locala = (com.yelp.android.dg.a)a.getAndSet(b);
      if ((locala != null) && (locala != b)) {
        locala.call();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */