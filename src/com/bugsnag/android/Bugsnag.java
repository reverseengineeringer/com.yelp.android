package com.bugsnag.android;

import android.content.Context;

public final class Bugsnag
{
  private static Client client;
  
  public static void addToTab(String paramString1, String paramString2, Object paramObject)
  {
    getClient().addToTab(paramString1, paramString2, paramObject);
  }
  
  public static void beforeNotify(BeforeNotify paramBeforeNotify)
  {
    getClient().beforeNotify(paramBeforeNotify);
  }
  
  public static void clearBreadcrumbs()
  {
    getClient().clearBreadcrumbs();
  }
  
  public static void clearTab(String paramString)
  {
    getClient().clearTab(paramString);
  }
  
  public static void enableExceptionHandler()
  {
    getClient().enableExceptionHandler();
  }
  
  public static Client getClient()
  {
    if (client == null) {
      throw new IllegalStateException("You must call Bugsnag.init before any other Bugsnag methods");
    }
    return client;
  }
  
  public static MetaData getMetaData()
  {
    return getClient().getMetaData();
  }
  
  public static Client init(Context paramContext)
  {
    client = new Client(paramContext);
    return client;
  }
  
  public static Client init(Context paramContext, String paramString)
  {
    client = new Client(paramContext, paramString);
    return client;
  }
  
  public static Client init(Context paramContext, String paramString, boolean paramBoolean)
  {
    client = new Client(paramContext, paramString, paramBoolean);
    return client;
  }
  
  public static void leaveBreadcrumb(String paramString)
  {
    getClient().leaveBreadcrumb(paramString);
  }
  
  public static void notify(String paramString1, String paramString2, String paramString3, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    getClient().notify(paramString1, paramString2, paramString3, paramArrayOfStackTraceElement, paramSeverity, paramMetaData);
  }
  
  public static void notify(String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement, Severity paramSeverity, MetaData paramMetaData)
  {
    getClient().notify(paramString1, paramString2, paramArrayOfStackTraceElement, paramSeverity, paramMetaData);
  }
  
  public static void notify(Throwable paramThrowable)
  {
    getClient().notify(paramThrowable);
  }
  
  public static void notify(Throwable paramThrowable, MetaData paramMetaData)
  {
    getClient().notify(paramThrowable, paramMetaData);
  }
  
  public static void notify(Throwable paramThrowable, Severity paramSeverity)
  {
    getClient().notify(paramThrowable, paramSeverity);
  }
  
  public static void notify(Throwable paramThrowable, Severity paramSeverity, MetaData paramMetaData)
  {
    getClient().notify(paramThrowable, paramSeverity, paramMetaData);
  }
  
  public static void setAppVersion(String paramString)
  {
    getClient().setAppVersion(paramString);
  }
  
  public static void setBuildUUID(String paramString)
  {
    getClient().setBuildUUID(paramString);
  }
  
  public static void setContext(String paramString)
  {
    getClient().setContext(paramString);
  }
  
  public static void setEndpoint(String paramString)
  {
    getClient().setEndpoint(paramString);
  }
  
  public static void setFilters(String... paramVarArgs)
  {
    getClient().setFilters(paramVarArgs);
  }
  
  public static void setIgnoreClasses(String... paramVarArgs)
  {
    getClient().setIgnoreClasses(paramVarArgs);
  }
  
  public static void setMaxBreadcrumbs(int paramInt)
  {
    getClient().setMaxBreadcrumbs(paramInt);
  }
  
  public static void setMetaData(MetaData paramMetaData)
  {
    getClient().setMetaData(paramMetaData);
  }
  
  public static void setNotifyReleaseStages(String... paramVarArgs)
  {
    getClient().setNotifyReleaseStages(paramVarArgs);
  }
  
  public static void setProjectPackages(String... paramVarArgs)
  {
    getClient().setProjectPackages(paramVarArgs);
  }
  
  public static void setReleaseStage(String paramString)
  {
    getClient().setReleaseStage(paramString);
  }
  
  public static void setSendThreads(boolean paramBoolean)
  {
    getClient().setSendThreads(paramBoolean);
  }
  
  public static void setUser(String paramString1, String paramString2, String paramString3)
  {
    getClient().setUser(paramString1, paramString2, paramString3);
  }
  
  public static void setUserEmail(String paramString)
  {
    getClient().setUserEmail(paramString);
  }
  
  public static void setUserId(String paramString)
  {
    getClient().setUserId(paramString);
  }
  
  public static void setUserName(String paramString)
  {
    getClient().setUserName(paramString);
  }
  
  public void disableExceptionHandler()
  {
    getClient().disableExceptionHandler();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Bugsnag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */