package com.adjust.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class PackageHandler
  extends HandlerThread
  implements IPackageHandler
{
  private static final String PACKAGE_QUEUE_FILENAME = "AdjustIoPackageQueue";
  private static final String PACKAGE_QUEUE_NAME = "Package queue";
  private IActivityHandler activityHandler;
  private BackoffStrategy backoffStrategy;
  private Context context;
  private Handler internalHandler;
  private AtomicBoolean isSending;
  private ILogger logger;
  private List<ActivityPackage> packageQueue;
  private boolean paused;
  private IRequestHandler requestHandler;
  
  public PackageHandler(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    internalHandler = new Handler(getLooper());
    logger = AdjustFactory.getLogger();
    backoffStrategy = AdjustFactory.getPackageHandlerBackoffStrategy();
    init(paramIActivityHandler, paramContext, paramBoolean);
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        PackageHandler.this.initInternal();
      }
    });
  }
  
  private void addInternal(ActivityPackage paramActivityPackage)
  {
    packageQueue.add(paramActivityPackage);
    logger.debug("Added package %d (%s)", new Object[] { Integer.valueOf(packageQueue.size()), paramActivityPackage });
    logger.verbose("%s", new Object[] { paramActivityPackage.getExtendedString() });
    writePackageQueue();
  }
  
  public static Boolean deletePackageQueue(Context paramContext)
  {
    return Boolean.valueOf(paramContext.deleteFile("AdjustIoPackageQueue"));
  }
  
  private void initInternal()
  {
    requestHandler = AdjustFactory.getRequestHandler(this);
    isSending = new AtomicBoolean();
    readPackageQueue();
  }
  
  private void readPackageQueue()
  {
    try
    {
      packageQueue = ((List)Util.readObject(context, "AdjustIoPackageQueue", "Package queue", List.class));
      if (packageQueue != null)
      {
        logger.debug("Package handler read %d packages", new Object[] { Integer.valueOf(packageQueue.size()) });
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        logger.error("Failed to read %s file (%s)", new Object[] { "Package queue", localException.getMessage() });
        packageQueue = null;
      }
      packageQueue = new ArrayList();
    }
  }
  
  private void sendFirstInternal()
  {
    if (packageQueue.isEmpty()) {
      return;
    }
    if (paused)
    {
      logger.debug("Package handler is paused", new Object[0]);
      return;
    }
    if (isSending.getAndSet(true))
    {
      logger.verbose("Package handler is already sending", new Object[0]);
      return;
    }
    ActivityPackage localActivityPackage = (ActivityPackage)packageQueue.get(0);
    requestHandler.sendPackage(localActivityPackage, packageQueue.size() - 1);
  }
  
  private void sendNextInternal()
  {
    packageQueue.remove(0);
    writePackageQueue();
    isSending.set(false);
    logger.verbose("Package handler can send", new Object[0]);
    sendFirstInternal();
  }
  
  private void writePackageQueue()
  {
    Util.writeObject(packageQueue, context, "AdjustIoPackageQueue", "Package queue");
    logger.debug("Package handler wrote %d packages", new Object[] { Integer.valueOf(packageQueue.size()) });
  }
  
  public void addPackage(final ActivityPackage paramActivityPackage)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        PackageHandler.this.addInternal(paramActivityPackage);
      }
    });
  }
  
  public void closeFirstPackage(ResponseData paramResponseData, ActivityPackage paramActivityPackage)
  {
    willRetry = true;
    activityHandler.finishedTrackingActivity(paramResponseData);
    if (paramActivityPackage != null)
    {
      int i = paramActivityPackage.increaseRetries();
      long l = Util.getWaitingTime(i, backoffStrategy);
      double d = l / 1000.0D;
      paramResponseData = Util.SecondsDisplayFormat.format(d);
      logger.verbose("Sleeping for %s seconds before retrying the %d time", new Object[] { paramResponseData, Integer.valueOf(i) });
      SystemClock.sleep(l);
    }
    logger.verbose("Package handler can send", new Object[0]);
    isSending.set(false);
    sendFirstPackage();
  }
  
  public void init(IActivityHandler paramIActivityHandler, Context paramContext, boolean paramBoolean)
  {
    activityHandler = paramIActivityHandler;
    context = paramContext;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      paused = paramBoolean;
      return;
    }
  }
  
  public void pauseSending()
  {
    paused = true;
  }
  
  public void resumeSending()
  {
    paused = false;
  }
  
  public void sendFirstPackage()
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        PackageHandler.this.sendFirstInternal();
      }
    });
  }
  
  public void sendNextPackage(ResponseData paramResponseData)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        PackageHandler.this.sendNextInternal();
      }
    });
    activityHandler.finishedTrackingActivity(paramResponseData);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.PackageHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */