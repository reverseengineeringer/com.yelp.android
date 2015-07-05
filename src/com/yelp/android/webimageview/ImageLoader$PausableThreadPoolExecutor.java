package com.yelp.android.webimageview;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class ImageLoader$PausableThreadPoolExecutor
  extends ThreadPoolExecutor
{
  private boolean isPaused;
  private final ReentrantLock mLock = new ReentrantLock();
  private final Condition mPauseCondition = mLock.newCondition();
  
  public ImageLoader$PausableThreadPoolExecutor(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, PriorityBlockingQueue<? extends Runnable> paramPriorityBlockingQueue)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramPriorityBlockingQueue);
  }
  
  protected void beforeExecute(Thread paramThread, Runnable paramRunnable)
  {
    super.beforeExecute(paramThread, paramRunnable);
    mLock.lock();
    try
    {
      for (;;)
      {
        boolean bool = isPaused;
        if (!bool) {
          break;
        }
        try
        {
          mPauseCondition.await();
        }
        catch (InterruptedException paramRunnable)
        {
          paramThread.interrupt();
        }
      }
    }
    finally
    {
      mLock.unlock();
    }
  }
  
  public void pause()
  {
    mLock.lock();
    try
    {
      isPaused = true;
      return;
    }
    finally
    {
      mLock.unlock();
    }
  }
  
  public void resume()
  {
    mLock.lock();
    try
    {
      isPaused = false;
      mPauseCondition.signalAll();
      return;
    }
    finally
    {
      mLock.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoader.PausableThreadPoolExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */