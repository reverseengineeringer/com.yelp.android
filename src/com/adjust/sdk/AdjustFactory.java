package com.adjust.sdk;

import android.content.Context;
import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

public class AdjustFactory
{
  private static IActivityHandler activityHandler;
  private static IAttributionHandler attributionHandler;
  private static HttpsURLConnection httpsURLConnection;
  private static ILogger logger;
  private static IPackageHandler packageHandler = null;
  private static BackoffStrategy packageHandlerBackoffStrategy = null;
  private static IRequestHandler requestHandler = null;
  private static BackoffStrategy sdkClickBackoffStrategy;
  private static ISdkClickHandler sdkClickHandler;
  private static long sessionInterval;
  private static long subsessionInterval;
  private static long timerInterval;
  private static long timerStart;
  
  static
  {
    attributionHandler = null;
    activityHandler = null;
    logger = null;
    httpsURLConnection = null;
    sdkClickHandler = null;
    timerInterval = -1L;
    timerStart = -1L;
    sessionInterval = -1L;
    subsessionInterval = -1L;
    sdkClickBackoffStrategy = null;
  }
  
  public static IActivityHandler getActivityHandler(AdjustConfig paramAdjustConfig)
  {
    if (activityHandler == null) {
      return ActivityHandler.getInstance(paramAdjustConfig);
    }
    activityHandler.init(paramAdjustConfig);
    return activityHandler;
  }
  
  public static IAttributionHandler getAttributionHandler(IActivityHandler paramIActivityHandler, ActivityPackage paramActivityPackage, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (attributionHandler == null) {
      return new AttributionHandler(paramIActivityHandler, paramActivityPackage, paramBoolean1, paramBoolean2);
    }
    attributionHandler.init(paramIActivityHandler, paramActivityPackage, paramBoolean1, paramBoolean2);
    return attributionHandler;
  }
  
  public static HttpsURLConnection getHttpsURLConnection(URL paramURL)
    throws IOException
  {
    if (httpsURLConnection == null) {
      return (HttpsURLConnection)paramURL.openConnection();
    }
    return httpsURLConnection;
  }
  
  public static URLGetConnection getHttpsURLGetConnection(URL paramURL)
    throws IOException
  {
    if (httpsURLConnection == null) {
      return new URLGetConnection((HttpsURLConnection)paramURL.openConnection(), paramURL);
    }
    return new URLGetConnection(httpsURLConnection, paramURL);
  }
  
  public static ILogger getLogger()
  {
    if (logger == null) {
      logger = new Logger();
    }
    return logger;
  }
  
  public static IPackageHandler getPackageHandler(ActivityHandler paramActivityHandler, Context paramContext, boolean paramBoolean)
  {
    if (packageHandler == null) {
      return new PackageHandler(paramActivityHandler, paramContext, paramBoolean);
    }
    packageHandler.init(paramActivityHandler, paramContext, paramBoolean);
    return packageHandler;
  }
  
  public static BackoffStrategy getPackageHandlerBackoffStrategy()
  {
    if (packageHandlerBackoffStrategy == null) {
      return BackoffStrategy.LONG_WAIT;
    }
    return packageHandlerBackoffStrategy;
  }
  
  public static IRequestHandler getRequestHandler(IPackageHandler paramIPackageHandler)
  {
    if (requestHandler == null) {
      return new RequestHandler(paramIPackageHandler);
    }
    requestHandler.init(paramIPackageHandler);
    return requestHandler;
  }
  
  public static BackoffStrategy getSdkClickBackoffStrategy()
  {
    if (sdkClickBackoffStrategy == null) {
      return BackoffStrategy.SHORT_WAIT;
    }
    return sdkClickBackoffStrategy;
  }
  
  public static ISdkClickHandler getSdkClickHandler(boolean paramBoolean)
  {
    if (sdkClickHandler == null) {
      return new SdkClickHandler(paramBoolean);
    }
    sdkClickHandler.init(paramBoolean);
    return sdkClickHandler;
  }
  
  public static long getSessionInterval()
  {
    if (sessionInterval == -1L) {
      return 1800000L;
    }
    return sessionInterval;
  }
  
  public static long getSubsessionInterval()
  {
    if (subsessionInterval == -1L) {
      return 1000L;
    }
    return subsessionInterval;
  }
  
  public static long getTimerInterval()
  {
    if (timerInterval == -1L) {
      return 60000L;
    }
    return timerInterval;
  }
  
  public static long getTimerStart()
  {
    if (timerStart == -1L) {
      return 60000L;
    }
    return timerStart;
  }
  
  public static void setActivityHandler(IActivityHandler paramIActivityHandler)
  {
    activityHandler = paramIActivityHandler;
  }
  
  public static void setAttributionHandler(IAttributionHandler paramIAttributionHandler)
  {
    attributionHandler = paramIAttributionHandler;
  }
  
  public static void setHttpsURLConnection(HttpsURLConnection paramHttpsURLConnection)
  {
    httpsURLConnection = paramHttpsURLConnection;
  }
  
  public static void setLogger(ILogger paramILogger)
  {
    logger = paramILogger;
  }
  
  public static void setPackageHandler(IPackageHandler paramIPackageHandler)
  {
    packageHandler = paramIPackageHandler;
  }
  
  public static void setPackageHandlerBackoffStrategy(BackoffStrategy paramBackoffStrategy)
  {
    packageHandlerBackoffStrategy = paramBackoffStrategy;
  }
  
  public static void setRequestHandler(IRequestHandler paramIRequestHandler)
  {
    requestHandler = paramIRequestHandler;
  }
  
  public static void setSdkClickBackoffStrategy(BackoffStrategy paramBackoffStrategy)
  {
    sdkClickBackoffStrategy = paramBackoffStrategy;
  }
  
  public static void setSdkClickHandler(ISdkClickHandler paramISdkClickHandler)
  {
    sdkClickHandler = paramISdkClickHandler;
  }
  
  public static void setSessionInterval(long paramLong)
  {
    sessionInterval = paramLong;
  }
  
  public static void setSubsessionInterval(long paramLong)
  {
    subsessionInterval = paramLong;
  }
  
  public static void setTimerInterval(long paramLong)
  {
    timerInterval = paramLong;
  }
  
  public static void setTimerStart(long paramLong)
  {
    timerStart = paramLong;
  }
  
  public static class URLGetConnection
  {
    HttpsURLConnection httpsURLConnection;
    URL url;
    
    URLGetConnection(HttpsURLConnection paramHttpsURLConnection, URL paramURL)
    {
      httpsURLConnection = paramHttpsURLConnection;
      url = paramURL;
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */