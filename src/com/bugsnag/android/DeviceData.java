package com.bugsnag.android;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

class DeviceData
  implements JsonStream.Streamable
{
  private static final String[] ROOT_INDICATORS = { "/system/xbin/su", "/system/bin/su", "/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Superuser", "/system/app/SuperSU", "/system/xbin/daemonsu" };
  private final Integer dpi;
  private final String id;
  private final String locale;
  private final Boolean rooted;
  private final Float screenDensity;
  private final String screenResolution;
  private final Long totalMemory;
  
  DeviceData(Context paramContext)
  {
    screenDensity = getScreenDensity(paramContext);
    dpi = getScreenDensityDpi(paramContext);
    screenResolution = getScreenResolution(paramContext);
    totalMemory = getTotalMemory();
    rooted = isRooted();
    locale = getLocale();
    id = getAndroidId(paramContext);
  }
  
  private static String getAndroidId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  private static String getLocale()
  {
    return Locale.getDefault().toString();
  }
  
  private static Float getScreenDensity(Context paramContext)
  {
    paramContext = paramContext.getResources();
    if (paramContext == null) {
      return null;
    }
    return Float.valueOf(getDisplayMetricsdensity);
  }
  
  private static Integer getScreenDensityDpi(Context paramContext)
  {
    paramContext = paramContext.getResources();
    if (paramContext == null) {
      return null;
    }
    return Integer.valueOf(getDisplayMetricsdensityDpi);
  }
  
  private static String getScreenResolution(Context paramContext)
  {
    paramContext = paramContext.getResources();
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.getDisplayMetrics();
    return String.format("%dx%d", new Object[] { Integer.valueOf(Math.max(widthPixels, heightPixels)), Integer.valueOf(Math.min(widthPixels, heightPixels)) });
  }
  
  private static Long getTotalMemory()
  {
    if (Runtime.getRuntime().maxMemory() != Long.MAX_VALUE) {
      return Long.valueOf(Runtime.getRuntime().maxMemory());
    }
    return Long.valueOf(Runtime.getRuntime().totalMemory());
  }
  
  private static Boolean isRooted()
  {
    if ((Build.TAGS != null) && (Build.TAGS.contains("test-keys"))) {
      return Boolean.valueOf(true);
    }
    try
    {
      String[] arrayOfString = ROOT_INDICATORS;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (new File(arrayOfString[i]).exists()) {
          return Boolean.valueOf(true);
        }
        i += 1;
      }
      return Boolean.valueOf(false);
    }
    catch (Exception localException)
    {
      return null;
    }
  }
  
  public String getUserId()
  {
    return id;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("osName").value("android");
    paramJsonStream.name("manufacturer").value(Build.MANUFACTURER);
    paramJsonStream.name("brand").value(Build.BRAND);
    paramJsonStream.name("model").value(Build.MODEL);
    paramJsonStream.name("id").value(id);
    paramJsonStream.name("apiLevel").value(Build.VERSION.SDK_INT);
    paramJsonStream.name("osVersion").value(Build.VERSION.RELEASE);
    paramJsonStream.name("osBuild").value(Build.DISPLAY);
    paramJsonStream.name("locale").value(locale);
    paramJsonStream.name("totalMemory").value(totalMemory);
    if (rooted != null) {
      paramJsonStream.name("jailbroken").value(rooted);
    }
    if (screenDensity != null) {
      paramJsonStream.name("screenDensity").value(screenDensity);
    }
    if (dpi != null) {
      paramJsonStream.name("dpi").value(dpi);
    }
    if (screenResolution != null) {
      paramJsonStream.name("screenResolution").value(screenResolution);
    }
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.DeviceData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */