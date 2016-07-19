package com.adjust.sdk;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class SdkClickHandler
  extends HandlerThread
  implements ISdkClickHandler
{
  private BackoffStrategy backoffStrategy;
  private Handler internalHandler;
  private ILogger logger;
  private List<ActivityPackage> packageQueue;
  private boolean paused;
  
  public SdkClickHandler(boolean paramBoolean)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    init(paramBoolean);
    logger = AdjustFactory.getLogger();
    internalHandler = new Handler(getLooper());
    backoffStrategy = AdjustFactory.getSdkClickBackoffStrategy();
  }
  
  private void logErrorMessage(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable)
  {
    paramActivityPackage = String.format("%s. (%s)", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    logger.error(paramActivityPackage, new Object[0]);
  }
  
  private void retrySending(ActivityPackage paramActivityPackage)
  {
    int i = paramActivityPackage.increaseRetries();
    logger.error("Retrying sdk_click package for the %d time", new Object[] { Integer.valueOf(i) });
    sendSdkClick(paramActivityPackage);
  }
  
  private void sendNextSdkClick()
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        if (paused) {}
        while (packageQueue.isEmpty()) {
          return;
        }
        ActivityPackage localActivityPackage = (ActivityPackage)packageQueue.get(0);
        int i = localActivityPackage.getRetries();
        if (i > 0)
        {
          long l = Util.getWaitingTime(i, backoffStrategy);
          double d = l / 1000.0D;
          String str = Util.SecondsDisplayFormat.format(d);
          logger.verbose("Sleeping for %s seconds before retrying sdk_click for the %d time", new Object[] { str, Integer.valueOf(i) });
          SystemClock.sleep(l);
        }
        SdkClickHandler.this.sendSdkClickInternal(localActivityPackage);
        packageQueue.remove(0);
        SdkClickHandler.this.sendNextSdkClick();
      }
    });
  }
  
  private void sendSdkClickInternal(ActivityPackage paramActivityPackage)
  {
    String str = "https://app.adjust.com" + paramActivityPackage.getPath();
    try
    {
      if (readHttpResponsecreatePOSTHttpsURLConnectiongetClientSdkgetParameterspackageQueue.size() - 1), paramActivityPackage).jsonResponse == null) {
        retrySending(paramActivityPackage);
      }
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      logErrorMessage(paramActivityPackage, "Sdk_click failed to encode parameters", localUnsupportedEncodingException);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      logErrorMessage(paramActivityPackage, "Sdk_click request timed out. Will retry later", localSocketTimeoutException);
      retrySending(paramActivityPackage);
      return;
    }
    catch (IOException localIOException)
    {
      logErrorMessage(paramActivityPackage, "Sdk_click request failed. Will retry later", localIOException);
      retrySending(paramActivityPackage);
      return;
    }
    catch (Throwable localThrowable)
    {
      logErrorMessage(paramActivityPackage, "Sdk_click runtime exception", localThrowable);
    }
  }
  
  public void init(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      paused = paramBoolean;
      packageQueue = new ArrayList();
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
    sendNextSdkClick();
  }
  
  public void sendSdkClick(final ActivityPackage paramActivityPackage)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        packageQueue.add(paramActivityPackage);
        logger.debug("Added sdk_click %d", new Object[] { Integer.valueOf(packageQueue.size()) });
        logger.verbose("%s", new Object[] { paramActivityPackage.getExtendedString() });
        SdkClickHandler.this.sendNextSdkClick();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.SdkClickHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */