package com.facebook;

import android.os.Handler;

class q
{
  private final GraphRequest a;
  private final Handler b;
  private final long c;
  private long d;
  private long e;
  private long f;
  
  q(Handler paramHandler, GraphRequest paramGraphRequest)
  {
    a = paramGraphRequest;
    b = paramHandler;
    c = g.g();
  }
  
  void a()
  {
    final Object localObject;
    final long l1;
    long l2;
    if (d > e)
    {
      localObject = a.e();
      if ((f > 0L) && ((localObject instanceof GraphRequest.e)))
      {
        l1 = d;
        l2 = f;
        localObject = (GraphRequest.e)localObject;
        if (b != null) {
          break label80;
        }
        ((GraphRequest.e)localObject).a(l1, l2);
      }
    }
    for (;;)
    {
      e = d;
      return;
      label80:
      b.post(new Runnable()
      {
        public void run()
        {
          localObject.a(l1, c);
        }
      });
    }
  }
  
  void a(long paramLong)
  {
    d += paramLong;
    if ((d >= e + c) || (d >= f)) {
      a();
    }
  }
  
  void b(long paramLong)
  {
    f += paramLong;
  }
}

/* Location:
 * Qualified Name:     com.facebook.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */