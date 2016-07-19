package com.yelp.android.dl;

import java.util.concurrent.ThreadFactory;
import rx.internal.schedulers.b;

final class a$c
  extends b
{
  private long c = 0L;
  
  a$c(ThreadFactory paramThreadFactory)
  {
    super(paramThreadFactory);
  }
  
  public void a(long paramLong)
  {
    c = paramLong;
  }
  
  public long c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */