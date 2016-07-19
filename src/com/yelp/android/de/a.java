package com.yelp.android.de;

import java.util.concurrent.atomic.AtomicReference;

public final class a
{
  private static final a a = new a();
  private final AtomicReference<b> b = new AtomicReference();
  
  public static a a()
  {
    return a;
  }
  
  public b b()
  {
    if (b.get() == null) {
      b.compareAndSet(null, b.a());
    }
    return (b)b.get();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.de.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */