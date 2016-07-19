package com.crashlytics.android.core;

import java.util.concurrent.CountDownLatch;

class e$b
{
  private boolean b = false;
  private final CountDownLatch c = new CountDownLatch(1);
  
  private e$b(e parame) {}
  
  void a(boolean paramBoolean)
  {
    b = paramBoolean;
    c.countDown();
  }
  
  boolean a()
  {
    return b;
  }
  
  void b()
  {
    try
    {
      c.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */