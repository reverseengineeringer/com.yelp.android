package com.adjust.sdk;

import java.text.DecimalFormat;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerOnce
{
  private Runnable command;
  private ILogger logger;
  private String name;
  private ScheduledExecutorService scheduler;
  private ScheduledFuture waitingTask;
  
  public TimerOnce(ScheduledExecutorService paramScheduledExecutorService, Runnable paramRunnable, String paramString)
  {
    name = paramString;
    scheduler = paramScheduledExecutorService;
    command = paramRunnable;
    logger = AdjustFactory.getLogger();
  }
  
  private void cancel(boolean paramBoolean)
  {
    if (waitingTask != null) {
      waitingTask.cancel(false);
    }
    waitingTask = null;
    if (paramBoolean) {
      logger.verbose("%s canceled", new Object[] { name });
    }
  }
  
  public void cancel()
  {
    cancel(true);
  }
  
  public long getFireIn()
  {
    if (waitingTask == null) {
      return 0L;
    }
    return waitingTask.getDelay(TimeUnit.MILLISECONDS);
  }
  
  public void startIn(long paramLong)
  {
    cancel(false);
    String str = Util.SecondsDisplayFormat.format(paramLong / 1000.0D);
    logger.verbose("%s starting. Launching in %s seconds", new Object[] { name, str });
    waitingTask = scheduler.schedule(new Runnable()
    {
      public void run()
      {
        logger.verbose("%s fired", new Object[] { name });
        command.run();
        TimerOnce.access$302(TimerOnce.this, null);
      }
    }, paramLong, TimeUnit.MILLISECONDS);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.TimerOnce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */