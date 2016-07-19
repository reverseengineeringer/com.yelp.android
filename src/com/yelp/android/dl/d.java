package com.yelp.android.dl;

import com.yelp.android.dk.e;

public final class d
{
  private static final d d = new d();
  private final rx.d a;
  private final rx.d b;
  private final rx.d c;
  
  private d()
  {
    rx.d locald = com.yelp.android.dk.d.a().d().a();
    if (locald != null)
    {
      a = locald;
      locald = com.yelp.android.dk.d.a().d().b();
      if (locald == null) {
        break label76;
      }
    }
    label76:
    for (b = locald;; b = new a())
    {
      locald = com.yelp.android.dk.d.a().d().c();
      if (locald == null) {
        break label90;
      }
      c = locald;
      return;
      a = new rx.internal.schedulers.a();
      break;
    }
    label90:
    c = c.c();
  }
  
  public static rx.d a()
  {
    return da;
  }
  
  public static rx.d b()
  {
    return db;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */