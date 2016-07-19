package rx.internal.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class RxThreadFactory
  extends AtomicLong
  implements ThreadFactory
{
  final String prefix;
  
  public RxThreadFactory(String paramString)
  {
    prefix = paramString;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, prefix + incrementAndGet());
    paramRunnable.setDaemon(true);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.RxThreadFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */