package com.bugsnag.android;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.SystemClock;
import java.io.IOException;
import java.util.List;

class AppState
  implements JsonStream.Streamable
{
  private static final Long startTime = Long.valueOf(SystemClock.elapsedRealtime());
  private final String activeScreen;
  private final Long duration = getDuration();
  private final Boolean inForeground;
  private final Boolean lowMemory;
  private final Long memoryUsage;
  
  AppState(Context paramContext)
  {
    inForeground = isInForeground(paramContext);
    activeScreen = getActiveScreen(paramContext);
    memoryUsage = getMemoryUsage();
    lowMemory = isLowMemory(paramContext);
  }
  
  private static String getActiveScreen(Context paramContext)
  {
    try
    {
      paramContext = getSystemService"activity"getRunningTasks1get0topActivity.getClassName();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not get active screen information, we recommend granting the 'android.permission.GET_TASKS' permission");
    }
    return null;
  }
  
  public static String getActiveScreenClass(String paramString)
  {
    if (paramString != null) {
      return paramString.substring(paramString.lastIndexOf('.') + 1);
    }
    return null;
  }
  
  private static Long getDuration()
  {
    return Long.valueOf(SystemClock.elapsedRealtime() - startTime.longValue());
  }
  
  private static Long getMemoryUsage()
  {
    return Long.valueOf(Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory());
  }
  
  static void init() {}
  
  private static Boolean isInForeground(Context paramContext)
  {
    try
    {
      List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
      if (localList.isEmpty()) {
        return Boolean.valueOf(false);
      }
      boolean bool = get0topActivity.getPackageName().equalsIgnoreCase(paramContext.getPackageName());
      return Boolean.valueOf(bool);
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not check if app is in the foreground, we recommend granting the 'android.permission.GET_TASKS' permission");
    }
    return null;
  }
  
  private static Boolean isLowMemory(Context paramContext)
  {
    try
    {
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
      paramContext.getMemoryInfo(localMemoryInfo);
      boolean bool = lowMemory;
      return Boolean.valueOf(bool);
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not check lowMemory status");
    }
    return null;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("duration").value(duration);
    if (inForeground != null) {
      paramJsonStream.name("inForeground").value(inForeground);
    }
    if (activeScreen != null) {
      paramJsonStream.name("activeScreen").value(activeScreen);
    }
    paramJsonStream.name("memoryUsage").value(memoryUsage);
    if (lowMemory != null) {
      paramJsonStream.name("lowMemory").value(lowMemory);
    }
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.AppState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */