package com.crashlytics.android;

import java.util.concurrent.CountDownLatch;

final class ba
{
  private boolean a = false;
  private final CountDownLatch b = new CountDownLatch(1);
  
  private ba(d paramd) {}
  
  final void a(boolean paramBoolean)
  {
    a = paramBoolean;
    b.countDown();
  }
  
  final boolean a()
  {
    return a;
  }
  
  final void b()
  {
    try
    {
      b.await();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */