package com.crashlytics.android.answers;

import com.yelp.android.cs.e;

class i
{
  long a;
  private e b;
  
  public i(e parame)
  {
    if (parame == null) {
      throw new NullPointerException("retryState must not be null");
    }
    b = parame;
  }
  
  public void a()
  {
    a = 0L;
    b = b.c();
  }
  
  public boolean a(long paramLong)
  {
    long l = b.a();
    return paramLong - a >= 1000000L * l;
  }
  
  public void b(long paramLong)
  {
    a = paramLong;
    b = b.b();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */