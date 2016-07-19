package com.bugsnag.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Iterator;

public class Client
{
  private final Context appContext;
  private final AppData appData;
  private final Breadcrumbs breadcrumbs;
  private final Configuration config;
  private final DeviceData deviceData;
  private final ErrorStore errorStore;
  private final User user = new User();
  
  public Client(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Client(Context paramContext, String paramString)
  {
    this(paramContext, paramString, true);
  }
  
  public Client(Context paramContext, String paramString, boolean paramBoolean)
  {
    appContext = paramContext.getApplicationContext();
    localObject2 = null;
    localObject1 = localObject2;
    paramContext = paramString;
    if (TextUtils.isEmpty(paramString)) {
      paramContext = paramString;
    }
    try
    {
      localObject1 = appContext.getPackageManager().getApplicationInfo(appContext.getPackageName(), 128);
      paramContext = paramString;
      paramString = metaData.getString("com.bugsnag.android.API_KEY");
      paramContext = paramString;
      localObject1 = metaData.getString("com.bugsnag.android.BUILD_UUID");
      paramContext = paramString;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        localObject1 = localObject2;
      }
    }
    if (paramContext == null) {
      throw new NullPointerException("You must provide a Bugsnag API key");
    }
    config = new Configuration(paramContext);
    if (localObject1 != null) {
      config.buildUUID = ((String)localObject1);
    }
    appData = new AppData(appContext, config);
    deviceData = new DeviceData(appContext);
    AppState.init();
    breadcrumbs = new Breadcrumbs();
    setProjectPackages(new String[] { appContext.getPackageName() });
    setUserId(deviceData.getUserId());
    errorStore = new ErrorStore(config, appContext);
    if (paramBoolean) {
      enableExceptionHandler();
    }
    errorStore.flush();
  }
  
  private void notify(final Error paramError, boolean paramBoolean)
  {
    if (paramError.shouldIgnoreClass()) {}
    while (!config.shouldNotifyForReleaseStage(appData.getReleaseStage())) {
      return;
    }
    paramError.setAppData(appData);
    paramError.setDeviceData(deviceData);
    paramError.setAppState(new AppState(appContext));
    paramError.setDeviceState(new DeviceState(appContext));
    paramError.setBreadcrumbs(breadcrumbs);
    paramError.setUser(user);
    if (!runBeforeNotifyTasks(paramError))
    {
      Logger.info("Skipping notification - beforeNotify task returned false");
      return;
    }
    final Notification localNotification = new Notification(config);
    localNotification.addError(paramError);
    if (paramBoolean)
    {
      deliver(localNotification, paramError);
      return;
    }
    Async.run(new Runnable()
    {
      public void run()
      {
        deliver(localNotification, paramError);
      }
    });
  }
  
  private boolean runBeforeNotifyTasks(Error paramError)
  {
    Iterator localIterator = config.beforeNotifyTasks.iterator();
    while (localIterator.hasNext())
    {
      BeforeNotify localBeforeNotify = (BeforeNotify)localIterator.next();
      try
      {
        boolean bool = localBeforeNotify.run(paramError);
        if (!bool) {
          return false;
        }
      }
      catch (Throwable localThrowable)
      {
        Logger.warn("BeforeNotify threw an Exception", localThrowable);
      }
    }
    return true;
  }
  
  public void addToTab(String paramString1, String paramString2, Object paramObject)
  {
    config.metaData.addToTab(paramString1, paramString2, paramObject);
  }
  
  public void beforeNotify(BeforeNotify paramBeforeNotify)
  {
    config.beforeNotify(paramBeforeNotify);
  }
  
  public void clearBreadcrumbs()
  {
    breadcrumbs.clear();
  }
  
  public void clearTab(String paramString)
  {
    config.metaData.clearTab(paramString);
  }
  
  void deliver(Notification paramNotification, Error paramError)
  {
    try
    {
      Logger.info(String.format("Sent %d new error(s) to Bugsnag", new Object[] { Integer.valueOf(paramNotification.deliver()) }));
      return;
    }
    catch (HttpClient.NetworkException paramNotification)
    {
      Logger.info("Could not send error(s) to Bugsnag, saving to disk to send later");
      errorStore.write(paramError);
      return;
    }
    catch (HttpClient.BadResponseException paramNotification)
    {
      Logger.info("Bad response when sending data to Bugsnag");
      return;
    }
    catch (Exception paramNotification)
    {
      Logger.warn("Problem sending error to Bugsnag", paramNotification);
    }
  }
  
  public void disableExceptionHandler()
  {
    ExceptionHandler.disable(this);
  }
  
  public void enableExceptionHandler()
  {
    ExceptionHandler.enable(this);
  }
  
  public MetaData getMetaData()
  {
    return config.metaData;
  }
  
  public void leaveBreadcrumb(String paramString)
  {
    breadcrumbs.add(paramString);
  }
  
  public void notify(String paramString1, String paramString2, String paramString3, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    paramString1 = new Error(config, paramString1, paramString2, paramArrayOfStackTraceElement);
    paramString1.setSeverity(paramSeverity);
    paramString1.setMetaData(paramMetaData);
    paramString1.setContext(paramString3);
    notify(paramString1, false);
  }
  
  public void notify(String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    paramString1 = new Error(config, paramString1, paramString2, paramArrayOfStackTraceElement);
    paramString1.setSeverity(paramSeverity);
    paramString1.setMetaData(paramMetaData);
    notify(paramString1, false);
  }
  
  public void notify(Throwable paramThrowable)
  {
    notify(new Error(config, paramThrowable), false);
  }
  
  public void notify(Throwable paramThrowable, MetaData paramMetaData)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setMetaData(paramMetaData);
    notify(paramThrowable, false);
  }
  
  public void notify(Throwable paramThrowable, Severity paramSeverity)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setSeverity(paramSeverity);
    notify(paramThrowable, false);
  }
  
  public void notify(Throwable paramThrowable, Severity paramSeverity, MetaData paramMetaData)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setSeverity(paramSeverity);
    paramThrowable.setMetaData(paramMetaData);
    notify(paramThrowable, false);
  }
  
  public void notifyBlocking(String paramString1, String paramString2, String paramString3, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    paramString1 = new Error(config, paramString1, paramString2, paramArrayOfStackTraceElement);
    paramString1.setSeverity(paramSeverity);
    paramString1.setMetaData(paramMetaData);
    paramString1.setContext(paramString3);
    notify(paramString1, true);
  }
  
  public void notifyBlocking(String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    paramString1 = new Error(config, paramString1, paramString2, paramArrayOfStackTraceElement);
    paramString1.setSeverity(paramSeverity);
    paramString1.setMetaData(paramMetaData);
    notify(paramString1, true);
  }
  
  public void notifyBlocking(Throwable paramThrowable)
  {
    notify(new Error(config, paramThrowable), true);
  }
  
  public void notifyBlocking(Throwable paramThrowable, MetaData paramMetaData)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setMetaData(paramMetaData);
    notify(paramThrowable, true);
  }
  
  public void notifyBlocking(Throwable paramThrowable, Severity paramSeverity)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setSeverity(paramSeverity);
    notify(paramThrowable, true);
  }
  
  public void notifyBlocking(Throwable paramThrowable, Severity paramSeverity, MetaData paramMetaData)
  {
    paramThrowable = new Error(config, paramThrowable);
    paramThrowable.setSeverity(paramSeverity);
    paramThrowable.setMetaData(paramMetaData);
    notify(paramThrowable, true);
  }
  
  public void setAppVersion(String paramString)
  {
    config.appVersion = paramString;
  }
  
  public void setBuildUUID(String paramString)
  {
    config.buildUUID = paramString;
  }
  
  public void setContext(String paramString)
  {
    config.context = paramString;
  }
  
  public void setEndpoint(String paramString)
  {
    config.endpoint = paramString;
  }
  
  public void setFilters(String... paramVarArgs)
  {
    config.filters = paramVarArgs;
  }
  
  public void setIgnoreClasses(String... paramVarArgs)
  {
    config.ignoreClasses = paramVarArgs;
  }
  
  public void setMaxBreadcrumbs(int paramInt)
  {
    breadcrumbs.setSize(paramInt);
  }
  
  public void setMetaData(MetaData paramMetaData)
  {
    config.metaData = paramMetaData;
  }
  
  public void setNotifyReleaseStages(String... paramVarArgs)
  {
    config.notifyReleaseStages = paramVarArgs;
  }
  
  public void setProjectPackages(String... paramVarArgs)
  {
    config.projectPackages = paramVarArgs;
  }
  
  public void setReleaseStage(String paramString)
  {
    config.releaseStage = paramString;
  }
  
  public void setSendThreads(boolean paramBoolean)
  {
    config.sendThreads = paramBoolean;
  }
  
  public void setUser(String paramString1, String paramString2, String paramString3)
  {
    user.setId(paramString1);
    user.setEmail(paramString2);
    user.setName(paramString3);
  }
  
  public void setUserEmail(String paramString)
  {
    user.setEmail(paramString);
  }
  
  public void setUserId(String paramString)
  {
    user.setId(paramString);
  }
  
  public void setUserName(String paramString)
  {
    user.setName(paramString);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Client
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */