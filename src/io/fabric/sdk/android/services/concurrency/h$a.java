package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.ThreadFactory;

public final class h$a
  implements ThreadFactory
{
  private final int a;
  
  public h$a(int paramInt)
  {
    a = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setPriority(a);
    paramRunnable.setName("Queue");
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */