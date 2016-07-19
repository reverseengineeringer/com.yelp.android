package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import java.util.Locale;
import java.util.Map;

class DeviceInfo
{
  String abi;
  String androidId;
  String apiLevel;
  String appVersion;
  String clientSdk;
  String country;
  String deviceManufacturer;
  String deviceName;
  String deviceType;
  String displayHeight;
  String displayWidth;
  String fbAttributionId;
  String hardwareName;
  String language;
  String macSha1;
  String macShortMd5;
  String osName;
  String osVersion;
  String packageName;
  Map<String, String> pluginKeys;
  String screenDensity;
  String screenFormat;
  String screenSize;
  
  DeviceInfo(Context paramContext, String paramString)
  {
    Object localObject1 = paramContext.getResources();
    DisplayMetrics localDisplayMetrics = ((Resources)localObject1).getDisplayMetrics();
    Object localObject2 = ((Resources)localObject1).getConfiguration();
    localObject1 = locale;
    int i = screenLayout;
    if (Util.getPlayAdId(paramContext) != null) {}
    for (boolean bool = true;; bool = false)
    {
      localObject2 = getMacAddress(paramContext, bool);
      packageName = getPackageName(paramContext);
      appVersion = getAppVersion(paramContext);
      deviceType = getDeviceType(i);
      deviceName = getDeviceName();
      deviceManufacturer = getDeviceManufacturer();
      osName = getOsName();
      osVersion = getOsVersion();
      apiLevel = getApiLevel();
      language = getLanguage((Locale)localObject1);
      country = getCountry((Locale)localObject1);
      screenSize = getScreenSize(i);
      screenFormat = getScreenFormat(i);
      screenDensity = getScreenDensity(localDisplayMetrics);
      displayWidth = getDisplayWidth(localDisplayMetrics);
      displayHeight = getDisplayHeight(localDisplayMetrics);
      clientSdk = getClientSdk(paramString);
      androidId = getAndroidId(paramContext, bool);
      fbAttributionId = getFacebookAttributionId(paramContext);
      pluginKeys = Util.getPluginKeys(paramContext);
      macSha1 = getMacSha1((String)localObject2);
      macShortMd5 = getMacShortMd5((String)localObject2);
      hardwareName = getHardwareName();
      abi = getABI();
      return;
    }
  }
  
  private String getABI()
  {
    String[] arrayOfString = Util.getSupportedAbis();
    if ((arrayOfString == null) || (arrayOfString.length == 0)) {
      return Util.getCpuAbi();
    }
    return arrayOfString[0];
  }
  
  private String getAndroidId(Context paramContext, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return Util.getAndroidId(paramContext);
    }
    return null;
  }
  
  private String getApiLevel()
  {
    return "" + Build.VERSION.SDK_INT;
  }
  
  private String getAppVersion(Context paramContext)
  {
    try
    {
      paramContext = getPackageManagergetPackageInfogetPackageName0versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  private String getClientSdk(String paramString)
  {
    if (paramString == null) {
      return "android4.7.0";
    }
    return String.format(Locale.US, "%s@%s", new Object[] { paramString, "android4.7.0" });
  }
  
  private String getCountry(Locale paramLocale)
  {
    return paramLocale.getCountry();
  }
  
  private String getDeviceManufacturer()
  {
    return Build.MANUFACTURER;
  }
  
  private String getDeviceName()
  {
    return Build.MODEL;
  }
  
  private String getDeviceType(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return "phone";
    }
    return "tablet";
  }
  
  private String getDisplayHeight(DisplayMetrics paramDisplayMetrics)
  {
    return String.valueOf(heightPixels);
  }
  
  private String getDisplayWidth(DisplayMetrics paramDisplayMetrics)
  {
    return String.valueOf(widthPixels);
  }
  
  private String getFacebookAttributionId(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getContentResolver().query(Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider"), new String[] { "aid" }, null, null, null);
      if (paramContext == null) {
        return null;
      }
      if (!paramContext.moveToFirst())
      {
        paramContext.close();
        return null;
      }
      String str = paramContext.getString(paramContext.getColumnIndex("aid"));
      paramContext.close();
      return str;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  private String getHardwareName()
  {
    return Build.DISPLAY;
  }
  
  private String getLanguage(Locale paramLocale)
  {
    return paramLocale.getLanguage();
  }
  
  private String getMacAddress(Context paramContext, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      if (!Util.checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
        AdjustFactory.getLogger().warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]);
      }
      return Util.getMacAddress(paramContext);
    }
    return null;
  }
  
  private String getMacSha1(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Util.sha1(paramString);
  }
  
  private String getMacShortMd5(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Util.md5(paramString.replaceAll(":", ""));
  }
  
  private String getOsName()
  {
    return "android";
  }
  
  private String getOsVersion()
  {
    return Build.VERSION.RELEASE;
  }
  
  private String getPackageName(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  private String getScreenDensity(DisplayMetrics paramDisplayMetrics)
  {
    int i = densityDpi;
    if (i == 0) {
      return null;
    }
    if (i < 140) {
      return "low";
    }
    if (i > 200) {
      return "high";
    }
    return "medium";
  }
  
  private String getScreenFormat(int paramInt)
  {
    switch (paramInt & 0x30)
    {
    default: 
      return null;
    case 32: 
      return "long";
    }
    return "normal";
  }
  
  private String getScreenSize(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    default: 
      return null;
    case 1: 
      return "small";
    case 2: 
      return "normal";
    case 3: 
      return "large";
    }
    return "xlarge";
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.DeviceInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */