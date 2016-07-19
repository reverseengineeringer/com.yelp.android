package com.adjust.sdk;

import java.text.DecimalFormat;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerCycle
{
  private Runnable command;
  private long cycleDelay;
  private String cycleDelaySeconds;
  private long initialDelay;
  private boolean isPaused;
  private ILogger logger;
  private String name;
  private ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
  private ScheduledFuture waitingTask;
  
  public TimerCycle(Runnable paramRunnable, long paramLong1, long paramLong2, String paramString)
  {
    name = paramString;
    command = paramRunnable;
    initialDelay = paramLong1;
    cycleDelay = paramLong2;
    isPaused = true;
    logger = AdjustFactory.getLogger();
    cycleDelaySeconds = Util.SecondsDisplayFormat.format(paramLong2 / 1000.0D);
  }
  
  public void start()
  {
    if (!isPaused)
    {
      logger.verbose("%s is already started", new Object[] { name });
      return;
    }
    String str = Util.SecondsDisplayFormat.format(initialDelay / 1000.0D);
    logger.verbose("%s starting in %s seconds and cycle every %s seconds", new Object[] { name, str, cycleDelaySeconds });
    waitingTask = scheduler.scheduleWithFixedDelay(new Runnable()
    {
      public void run()
      {
        logger.verbose("%s fired", new Object[] { name });
        command.run();
      }
    }, initialDelay, cycleDelay, TimeUnit.MILLISECONDS);
    isPaused = false;
  }
  
  public void suspend()
  {
    if (isPaused)
    {
      logger.verbose("%s is already suspended", new Object[] { name });
      return;
    }
    initialDelay = waitingTask.getDelay(TimeUnit.MILLISECONDS);
    waitingTask.cancel(false);
    waitingTask = null;
    String str = Util.SecondsDisplayFormat.format(initialDelay / 1000.0D);
    logger.verbose("%s suspended with %s seconds left", new Object[] { name, str });
    isPaused = true;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.TimerCycle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */