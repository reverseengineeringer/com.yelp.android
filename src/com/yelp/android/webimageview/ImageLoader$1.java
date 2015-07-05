package com.yelp.android.webimageview;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class ImageLoader$1
  implements ThreadFactory
{
  private final AtomicInteger COUNTER = new AtomicInteger();
  
  ImageLoader$1(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(new ImageLoader.1.1(this, paramRunnable));
    paramRunnable.setDaemon(true);
    paramRunnable.setName("ImageLoader-" + COUNTER.incrementAndGet());
    if (val$exceptionHandler != null) {
      paramRunnable.setUncaughtExceptionHandler(val$exceptionHandler);
    }
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */