package com.adjust.sdk;

import android.content.Context;

public class AdjustConfig
{
  public static final String ENVIRONMENT_PRODUCTION = "production";
  public static final String ENVIRONMENT_SANDBOX = "sandbox";
  String appToken;
  Context context;
  Class deepLinkComponent;
  String defaultTracker;
  Boolean deviceKnown;
  String environment;
  boolean eventBufferingEnabled;
  LogLevel logLevel;
  OnAttributionChangedListener onAttributionChangedListener;
  OnDeeplinkResponseListener onDeeplinkResponseListener;
  OnEventTrackingFailedListener onEventTrackingFailedListener;
  OnEventTrackingSucceededListener onEventTrackingSucceededListener;
  OnSessionTrackingFailedListener onSessionTrackingFailedListener;
  OnSessionTrackingSucceededListener onSessionTrackingSucceededListener;
  String processName;
  String referrer;
  long referrerClickTime;
  String sdkPrefix;
  boolean sendInBackground;
  
  public AdjustConfig(Context paramContext, String paramString1, String paramString2)
  {
    if (!isValid(paramContext, paramString1, paramString2)) {
      return;
    }
    context = paramContext.getApplicationContext();
    appToken = paramString1;
    environment = paramString2;
    logLevel = LogLevel.INFO;
    eventBufferingEnabled = false;
    sendInBackground = false;
  }
  
  private static boolean checkAppToken(String paramString)
  {
    ILogger localILogger = AdjustFactory.getLogger();
    if (paramString == null)
    {
      localILogger.error("Missing App Token", new Object[0]);
      return false;
    }
    if (paramString.length() != 12)
    {
      localILogger.error("Malformed App Token '%s'", new Object[] { paramString });
      return false;
    }
    return true;
  }
  
  private static boolean checkContext(Context paramContext)
  {
    ILogger localILogger = AdjustFactory.getLogger();
    if (paramContext == null)
    {
      localILogger.error("Missing context", new Object[0]);
      return false;
    }
    if (!Util.checkPermission(paramContext, "android.permission.INTERNET"))
    {
      localILogger.error("Missing permission: INTERNET", new Object[0]);
      return false;
    }
    return true;
  }
  
  private static boolean checkEnvironment(String paramString)
  {
    ILogger localILogger = AdjustFactory.getLogger();
    if (paramString == null)
    {
      localILogger.error("Missing environment", new Object[0]);
      return false;
    }
    if (paramString.equals("sandbox"))
    {
      localILogger.Assert("SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don't forget to set the environment to `production` before publishing!", new Object[0]);
      return true;
    }
    if (paramString.equals("production"))
    {
      localILogger.Assert("PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!", new Object[0]);
      return true;
    }
    localILogger.error("Unknown environment '%s'", new Object[] { paramString });
    return false;
  }
  
  private boolean isValid(Context paramContext, String paramString1, String paramString2)
  {
    if (!checkAppToken(paramString1)) {}
    while ((!checkEnvironment(paramString2)) || (!checkContext(paramContext))) {
      return false;
    }
    return true;
  }
  
  public boolean hasAttributionChangedListener()
  {
    return onAttributionChangedListener != null;
  }
  
  public boolean hasListener()
  {
    return (onAttributionChangedListener != null) || (onEventTrackingSucceededListener != null) || (onEventTrackingFailedListener != null) || (onSessionTrackingSucceededListener != null) || (onSessionTrackingFailedListener != null);
  }
  
  public boolean isValid()
  {
    return appToken != null;
  }
  
  public void setDeepLinkComponent(Class paramClass)
  {
    deepLinkComponent = paramClass;
  }
  
  public void setDefaultTracker(String paramString)
  {
    defaultTracker = paramString;
  }
  
  public void setDeviceKnown(boolean paramBoolean)
  {
    deviceKnown = Boolean.valueOf(paramBoolean);
  }
  
  public void setEventBufferingEnabled(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      eventBufferingEnabled = false;
      return;
    }
    eventBufferingEnabled = paramBoolean.booleanValue();
  }
  
  public void setLogLevel(LogLevel paramLogLevel)
  {
    logLevel = paramLogLevel;
  }
  
  public void setOnAttributionChangedListener(OnAttributionChangedListener paramOnAttributionChangedListener)
  {
    onAttributionChangedListener = paramOnAttributionChangedListener;
  }
  
  public void setOnDeeplinkResponseListener(OnDeeplinkResponseListener paramOnDeeplinkResponseListener)
  {
    onDeeplinkResponseListener = paramOnDeeplinkResponseListener;
  }
  
  public void setOnEventTrackingFailedListener(OnEventTrackingFailedListener paramOnEventTrackingFailedListener)
  {
    onEventTrackingFailedListener = paramOnEventTrackingFailedListener;
  }
  
  public void setOnEventTrackingSucceededListener(OnEventTrackingSucceededListener paramOnEventTrackingSucceededListener)
  {
    onEventTrackingSucceededListener = paramOnEventTrackingSucceededListener;
  }
  
  public void setOnSessionTrackingFailedListener(OnSessionTrackingFailedListener paramOnSessionTrackingFailedListener)
  {
    onSessionTrackingFailedListener = paramOnSessionTrackingFailedListener;
  }
  
  public void setOnSessionTrackingSucceededListener(OnSessionTrackingSucceededListener paramOnSessionTrackingSucceededListener)
  {
    onSessionTrackingSucceededListener = paramOnSessionTrackingSucceededListener;
  }
  
  public void setProcessName(String paramString)
  {
    processName = paramString;
  }
  
  public void setSdkPrefix(String paramString)
  {
    sdkPrefix = paramString;
  }
  
  public void setSendInBackground(boolean paramBoolean)
  {
    sendInBackground = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */