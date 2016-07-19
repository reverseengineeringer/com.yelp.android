package io.fabric.sdk.android;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

class c$2
  implements f
{
  final CountDownLatch a = new CountDownLatch(b);
  
  c$2(c paramc, int paramInt) {}
  
  public void a(Exception paramException)
  {
    c.b(c).a(paramException);
  }
  
  public void a(Object paramObject)
  {
    a.countDown();
    if (a.getCount() == 0L)
    {
      c.a(c).set(true);
      c.b(c).a(c);
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */