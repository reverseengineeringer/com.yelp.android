package com.bugsnag.android;

import android.text.TextUtils;
import java.io.IOException;

public class Error
  implements JsonStream.Streamable
{
  private AppData appData;
  private AppState appState;
  private Breadcrumbs breadcrumbs;
  private final Configuration config;
  private String context;
  private DeviceData deviceData;
  private DeviceState deviceState;
  private Throwable exception;
  private StackTraceElement[] frames;
  private String groupingHash;
  private String message;
  private MetaData metaData = new MetaData();
  private String name;
  private Severity severity = Severity.WARNING;
  private User user;
  
  Error(Configuration paramConfiguration, String paramString1, String paramString2, StackTraceElement[] paramArrayOfStackTraceElement)
  {
    config = paramConfiguration;
    name = paramString1;
    message = paramString2;
    frames = paramArrayOfStackTraceElement;
  }
  
  Error(Configuration paramConfiguration, Throwable paramThrowable)
  {
    config = paramConfiguration;
    exception = paramThrowable;
  }
  
  public void addToTab(String paramString1, String paramString2, Object paramObject)
  {
    metaData.addToTab(paramString1, paramString2, paramObject);
  }
  
  public void clearTab(String paramString)
  {
    metaData.clearTab(paramString);
  }
  
  public String getContext()
  {
    if ((context != null) && (!TextUtils.isEmpty(context))) {
      return context;
    }
    if (config.context != null) {
      return config.context;
    }
    if (appState != null) {
      return AppState.getActiveScreenClass(context);
    }
    return null;
  }
  
  public Throwable getException()
  {
    return exception;
  }
  
  public String getExceptionMessage()
  {
    if (exception != null) {
      return exception.getLocalizedMessage();
    }
    return message;
  }
  
  public String getExceptionName()
  {
    if (exception != null) {
      return exception.getClass().getName();
    }
    return name;
  }
  
  public MetaData getMetaData()
  {
    return metaData;
  }
  
  public Severity getSeverity()
  {
    return severity;
  }
  
  void setAppData(AppData paramAppData)
  {
    appData = paramAppData;
  }
  
  void setAppState(AppState paramAppState)
  {
    appState = paramAppState;
  }
  
  void setBreadcrumbs(Breadcrumbs paramBreadcrumbs)
  {
    breadcrumbs = paramBreadcrumbs;
  }
  
  public void setContext(String paramString)
  {
    context = paramString;
  }
  
  void setDeviceData(DeviceData paramDeviceData)
  {
    deviceData = paramDeviceData;
  }
  
  void setDeviceState(DeviceState paramDeviceState)
  {
    deviceState = paramDeviceState;
  }
  
  public void setGroupingHash(String paramString)
  {
    groupingHash = paramString;
  }
  
  public void setMetaData(MetaData paramMetaData)
  {
    metaData = paramMetaData;
  }
  
  public void setSeverity(Severity paramSeverity)
  {
    if (paramSeverity != null) {
      severity = paramSeverity;
    }
  }
  
  void setUser(User paramUser)
  {
    user = paramUser;
  }
  
  public void setUser(String paramString1, String paramString2, String paramString3)
  {
    user = new User(paramString1, paramString2, paramString3);
  }
  
  public void setUserEmail(String paramString)
  {
    user = new User(user);
    user.setEmail(paramString);
  }
  
  public void setUserId(String paramString)
  {
    user = new User(user);
    user.setId(paramString);
  }
  
  public void setUserName(String paramString)
  {
    user = new User(user);
    user.setName(paramString);
  }
  
  boolean shouldIgnoreClass()
  {
    return config.shouldIgnoreClass(getExceptionName());
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    int i = 0;
    Object localObject = MetaData.merge(new MetaData[] { config.metaData, metaData });
    ((MetaData)localObject).setFilters(config.filters);
    paramJsonStream.beginObject();
    paramJsonStream.name("payloadVersion").value("2");
    if (getContext() != null) {
      paramJsonStream.name("context").value(getContext());
    }
    paramJsonStream.name("severity").value(severity);
    paramJsonStream.name("metaData").value((JsonStream.Streamable)localObject);
    if (config.projectPackages != null)
    {
      paramJsonStream.name("projectPackages").beginArray();
      localObject = config.projectPackages;
      int j = localObject.length;
      while (i < j)
      {
        paramJsonStream.value(localObject[i]);
        i += 1;
      }
      paramJsonStream.endArray();
    }
    if (exception != null) {
      paramJsonStream.name("exceptions").value(new Exceptions(config, exception));
    }
    for (;;)
    {
      if (user != null) {
        paramJsonStream.name("user").value(user);
      }
      if (appData != null) {
        paramJsonStream.name("app").value(appData);
      }
      if (appState != null) {
        paramJsonStream.name("appState").value(appState);
      }
      if (deviceData != null) {
        paramJsonStream.name("device").value(deviceData);
      }
      if (deviceState != null) {
        paramJsonStream.name("deviceState").value(deviceState);
      }
      if (breadcrumbs != null) {
        paramJsonStream.name("breadcrumbs").value(breadcrumbs);
      }
      if (groupingHash != null) {
        paramJsonStream.name("groupingHash").value(groupingHash);
      }
      if (config.sendThreads) {
        paramJsonStream.name("threads").value(new ThreadState(config));
      }
      paramJsonStream.endObject();
      return;
      paramJsonStream.name("exceptions").value(new Exceptions(config, name, message, frames));
    }
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Error
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */