package com.bugsnag.android;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings.Secure;
import java.io.File;
import java.io.IOException;
import java.util.Date;

class DeviceState
  implements JsonStream.Streamable
{
  private final Float batteryLevel;
  private final Boolean charging;
  private final Long freeDisk;
  private final Long freeMemory = getFreeMemory();
  private final String locationStatus;
  private final String networkAccess;
  private final String orientation;
  private final String time;
  
  DeviceState(Context paramContext)
  {
    orientation = getOrientation(paramContext);
    batteryLevel = getBatteryLevel(paramContext);
    freeDisk = getFreeDisk();
    charging = isCharging(paramContext);
    locationStatus = getLocationStatus(paramContext);
    networkAccess = getNetworkAccess(paramContext);
    time = getTime();
  }
  
  private static Float getBatteryLevel(Context paramContext)
  {
    try
    {
      paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      float f = paramContext.getIntExtra("level", -1) / paramContext.getIntExtra("scale", -1);
      return Float.valueOf(f);
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not get batteryLevel");
    }
    return null;
  }
  
  private static Long getFreeDisk()
  {
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l1 = localStatFs.getBlockSize();
      long l2 = localStatFs.getBlockCount();
      localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l3 = localStatFs.getBlockSize();
      l1 = Math.min(localStatFs.getBlockCount() * l3, l2 * l1);
      return Long.valueOf(l1);
    }
    catch (Exception localException)
    {
      Logger.warn("Could not get freeDisk");
    }
    return null;
  }
  
  private static Long getFreeMemory()
  {
    if (Runtime.getRuntime().maxMemory() != Long.MAX_VALUE) {
      return Long.valueOf(Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() + Runtime.getRuntime().freeMemory());
    }
    return Long.valueOf(Runtime.getRuntime().freeMemory());
  }
  
  private static String getLocationStatus(Context paramContext)
  {
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "location_providers_allowed");
      if ((paramContext != null) && (paramContext.length() > 0)) {
        return "allowed";
      }
      return "disallowed";
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not get locationStatus");
    }
    return null;
  }
  
  private static String getNetworkAccess(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isConnectedOrConnecting()))
      {
        if (paramContext.getType() == 1) {
          return "wifi";
        }
        if (paramContext.getType() == 9) {
          return "ethernet";
        }
      }
      else
      {
        return "none";
      }
    }
    catch (Exception paramContext)
    {
      Logger.warn("Could not get network access information, we recommend granting the 'android.permission.ACCESS_NETWORK_STATE' permission");
      return null;
    }
    return "cellular";
  }
  
  private static String getOrientation(Context paramContext)
  {
    switch (getResourcesgetConfigurationorientation)
    {
    default: 
      return null;
    case 2: 
      return "landscape";
    }
    return "portrait";
  }
  
  private String getTime()
  {
    return DateUtils.toISO8601(new Date());
  }
  
  private static Boolean isCharging(Context paramContext)
  {
    label52:
    for (;;)
    {
      try
      {
        int i = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("status", -1);
        if (i != 2) {
          if (i == 5)
          {
            break label52;
            return Boolean.valueOf(bool);
          }
          else
          {
            bool = false;
            continue;
          }
        }
        boolean bool = true;
      }
      catch (Exception paramContext)
      {
        Logger.warn("Could not get charging status");
        return null;
      }
    }
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginObject();
    paramJsonStream.name("freeMemory").value(freeMemory);
    if (orientation != null) {
      paramJsonStream.name("orientation").value(orientation);
    }
    if (batteryLevel != null) {
      paramJsonStream.name("batteryLevel").value(batteryLevel);
    }
    if (freeDisk != null) {
      paramJsonStream.name("freeDisk").value(freeDisk);
    }
    if (charging != null) {
      paramJsonStream.name("charging").value(charging);
    }
    if (locationStatus != null) {
      paramJsonStream.name("locationStatus").value(locationStatus);
    }
    if (networkAccess != null) {
      paramJsonStream.name("networkAccess").value(networkAccess);
    }
    paramJsonStream.name("time").value(time);
    paramJsonStream.endObject();
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.DeviceState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */