package com.yelp.android.dl;

import rx.d;
import rx.d.a;
import rx.internal.schedulers.b;
import rx.internal.util.RxThreadFactory;

public final class c
  extends d
{
  private static final RxThreadFactory b = new RxThreadFactory("RxNewThreadScheduler-");
  private static final c c = new c();
  
  static c c()
  {
    return c;
  }
  
  public d.a a()
  {
    return new b(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */