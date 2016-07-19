package com.adjust.sdk;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;

public class RequestHandler
  extends HandlerThread
  implements IRequestHandler
{
  private Handler internalHandler;
  private ILogger logger;
  private IPackageHandler packageHandler;
  
  public RequestHandler(IPackageHandler paramIPackageHandler)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    logger = AdjustFactory.getLogger();
    internalHandler = new Handler(getLooper());
    init(paramIPackageHandler);
  }
  
  private void closePackage(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable)
  {
    paramString = String.format("%s. (%s) Will retry later", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    logger.error(paramString, new Object[0]);
    paramThrowable = ResponseData.buildResponseData(paramActivityPackage);
    message = paramString;
    packageHandler.closeFirstPackage(paramThrowable, paramActivityPackage);
  }
  
  private void sendInternal(ActivityPackage paramActivityPackage, int paramInt)
  {
    Object localObject = "https://app.adjust.com" + paramActivityPackage.getPath();
    try
    {
      localObject = Util.readHttpResponse(Util.createPOSTHttpsURLConnection((String)localObject, paramActivityPackage.getClientSdk(), paramActivityPackage.getParameters(), paramInt), paramActivityPackage);
      if (jsonResponse == null)
      {
        packageHandler.closeFirstPackage((ResponseData)localObject, paramActivityPackage);
        return;
      }
      packageHandler.sendNextPackage((ResponseData)localObject);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      sendNextPackage(paramActivityPackage, "Failed to encode parameters", localUnsupportedEncodingException);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      closePackage(paramActivityPackage, "Request timed out", localSocketTimeoutException);
      return;
    }
    catch (IOException localIOException)
    {
      closePackage(paramActivityPackage, "Request failed", localIOException);
      return;
    }
    catch (Throwable localThrowable)
    {
      sendNextPackage(paramActivityPackage, "Runtime exception", localThrowable);
    }
  }
  
  private void sendNextPackage(ActivityPackage paramActivityPackage, String paramString, Throwable paramThrowable)
  {
    paramString = String.format("%s. (%s)", new Object[] { paramActivityPackage.getFailureMessage(), Util.getReasonString(paramString, paramThrowable) });
    logger.error(paramString, new Object[0]);
    paramActivityPackage = ResponseData.buildResponseData(paramActivityPackage);
    message = paramString;
    packageHandler.sendNextPackage(paramActivityPackage);
  }
  
  public void init(IPackageHandler paramIPackageHandler)
  {
    packageHandler = paramIPackageHandler;
  }
  
  public void sendPackage(final ActivityPackage paramActivityPackage, final int paramInt)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        RequestHandler.this.sendInternal(paramActivityPackage, paramInt);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.RequestHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */