package com.bugsnag.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.io.IOException;

class AppData
  implements JsonStream.Streamable
{
  private final String appName;
  private final Configuration config;
  private final String guessedReleaseStage;
  private final String packageName;
  private final Integer versionCode;
  private final String versionName;
  
  AppData(Context paramContext, Configuration paramConfiguration)
  {
    config = paramConfiguration;
    packageName = getPackageName(paramContext);
    appName = getAppName(paramContext);
    versionCode = getVersionCode(paramContext);
    versionName = getVersionName(paramContext);
    guessedReleaseStage = guessReleaseStage(paramContext);
  }
  
  private static String getAppName(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = (String)localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0));
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Logger.warn("Could not get app name");
    }
    return null;
  }
  
  private static String getPackageName(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  private static Integer getVersionCode(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return Integer.valueOf(i);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Logger.warn("Could not get versionCode");
    }
    return null;
  }
  
  private static String getVersionName(Context paramContext)
  {
    try
    {
      paramContext = getPackageManagergetPackageInfogetPackageName0versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Logger.warn("Could not get versionName");
    }
    return null;
  }
  
  private static String guessReleaseStage(Context paramContext)
  {
    try
    {
      if ((getPackageManagergetApplicationInfogetPackageName0flags & 0x2) != 0) {
        return "development";
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Logger.warn("Could not get releaseStage");
    }
    return "production";
  }
  
  public String getAppVersion()
  {
    if (config.appVersion != null) {
      return config.appVersion;
    }
    return versionName;
  }
  
  public String getReleaseStage()
  {
    if (config.releaseStage != null) {
      return config.releaseStage;
    }
    return guessedReleaseStage;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("id").value(packageName);
    paramJsonStream.name("name").value(appName);
    paramJsonStream.name("packageName").value(packageName);
    paramJsonStream.name("versionName").value(versionName);
    paramJsonStream.name("versionCode").value(versionCode);
    if (config.buildUUID != null) {
      paramJsonStream.name("buildUUID").value(config.buildUUID);
    }
    if (getAppVersion() != null) {
      paramJsonStream.name("version").value(getAppVersion());
    }
    paramJsonStream.name("releaseStage").value(getReleaseStage());
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.AppData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */