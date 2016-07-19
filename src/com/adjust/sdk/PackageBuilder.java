package com.adjust.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

class PackageBuilder
{
  private static ILogger logger = ;
  private ActivityState activityState;
  private AdjustConfig adjustConfig;
  AdjustAttribution attribution;
  private long createdAt;
  String deeplink;
  private DeviceInfo deviceInfo;
  Map<String, String> extraParameters;
  String referrer;
  String reftag;
  
  public PackageBuilder(AdjustConfig paramAdjustConfig, DeviceInfo paramDeviceInfo, ActivityState paramActivityState, long paramLong)
  {
    adjustConfig = paramAdjustConfig;
    deviceInfo = paramDeviceInfo;
    if (paramActivityState == null) {}
    for (paramAdjustConfig = null;; paramAdjustConfig = paramActivityState.shallowCopy())
    {
      activityState = paramAdjustConfig;
      createdAt = paramLong;
      return;
    }
  }
  
  private void addBoolean(Map<String, String> paramMap, String paramString, Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return;
    }
    if (paramBoolean.booleanValue()) {}
    for (int i = 1;; i = 0)
    {
      addInt(paramMap, paramString, i);
      return;
    }
  }
  
  private void addDate(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    addString(paramMap, paramString, Util.dateFormat(paramLong));
  }
  
  private void addDouble(Map<String, String> paramMap, String paramString, Double paramDouble)
  {
    if (paramDouble == null) {
      return;
    }
    addString(paramMap, paramString, String.format(Locale.US, "%.5f", new Object[] { paramDouble }));
  }
  
  private void addDuration(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    addInt(paramMap, paramString, (500L + paramLong) / 1000L);
  }
  
  private void addInt(Map<String, String> paramMap, String paramString, long paramLong)
  {
    if (paramLong < 0L) {
      return;
    }
    addString(paramMap, paramString, Long.toString(paramLong));
  }
  
  private void addMapJson(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2)
  {
    if (paramMap2 == null) {}
    while (paramMap2.size() == 0) {
      return;
    }
    addString(paramMap1, paramString, new JSONObject(paramMap2).toString());
  }
  
  private void addString(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return;
    }
    paramMap.put(paramString1, paramString2);
  }
  
  private void checkDeviceIds(Map<String, String> paramMap)
  {
    if ((!paramMap.containsKey("mac_sha1")) && (!paramMap.containsKey("mac_md5")) && (!paramMap.containsKey("android_id")) && (!paramMap.containsKey("gps_adid"))) {
      logger.error("Missing device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
    }
  }
  
  private void fillPluginKeys(Map<String, String> paramMap)
  {
    if (deviceInfo.pluginKeys == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = deviceInfo.pluginKeys.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        addString(paramMap, (String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }
  
  private ActivityPackage getDefaultActivityPackage(ActivityKind paramActivityKind)
  {
    paramActivityKind = new ActivityPackage(paramActivityKind);
    paramActivityKind.setClientSdk(deviceInfo.clientSdk);
    return paramActivityKind;
  }
  
  private Map<String, String> getDefaultParameters()
  {
    HashMap localHashMap = new HashMap();
    injectDeviceInfo(localHashMap);
    injectConfig(localHashMap);
    injectActivityState(localHashMap);
    injectCreatedAt(localHashMap);
    checkDeviceIds(localHashMap);
    return localHashMap;
  }
  
  private String getEventSuffix(AdjustEvent paramAdjustEvent)
  {
    if (revenue == null) {
      return String.format(Locale.US, "'%s'", new Object[] { eventToken });
    }
    return String.format(Locale.US, "(%.5f %s, '%s')", new Object[] { revenue, currency, eventToken });
  }
  
  private Map<String, String> getIdsParameters()
  {
    HashMap localHashMap = new HashMap();
    injectDeviceInfoIds(localHashMap);
    injectConfig(localHashMap);
    injectCreatedAt(localHashMap);
    checkDeviceIds(localHashMap);
    return localHashMap;
  }
  
  private void injectActivityState(Map<String, String> paramMap)
  {
    addString(paramMap, "android_uuid", activityState.uuid);
    addInt(paramMap, "session_count", activityState.sessionCount);
    addInt(paramMap, "subsession_count", activityState.subsessionCount);
    addDuration(paramMap, "session_length", activityState.sessionLength);
    addDuration(paramMap, "time_spent", activityState.timeSpent);
  }
  
  private void injectAttribution(Map<String, String> paramMap)
  {
    if (attribution == null) {
      return;
    }
    addString(paramMap, "tracker", attribution.trackerName);
    addString(paramMap, "campaign", attribution.campaign);
    addString(paramMap, "adgroup", attribution.adgroup);
    addString(paramMap, "creative", attribution.creative);
  }
  
  private void injectConfig(Map<String, String> paramMap)
  {
    addString(paramMap, "app_token", adjustConfig.appToken);
    addString(paramMap, "environment", adjustConfig.environment);
    addBoolean(paramMap, "device_known", adjustConfig.deviceKnown);
    addBoolean(paramMap, "needs_response_details", Boolean.valueOf(adjustConfig.hasListener()));
    addString(paramMap, "gps_adid", Util.getPlayAdId(adjustConfig.context));
    addBoolean(paramMap, "tracking_enabled", Util.isPlayTrackingEnabled(adjustConfig.context));
    addBoolean(paramMap, "event_buffering_enabled", Boolean.valueOf(adjustConfig.eventBufferingEnabled));
  }
  
  private void injectCreatedAt(Map<String, String> paramMap)
  {
    addDate(paramMap, "created_at", createdAt);
  }
  
  private void injectDeviceInfo(Map<String, String> paramMap)
  {
    injectDeviceInfoIds(paramMap);
    addString(paramMap, "fb_id", deviceInfo.fbAttributionId);
    addString(paramMap, "package_name", deviceInfo.packageName);
    addString(paramMap, "app_version", deviceInfo.appVersion);
    addString(paramMap, "device_type", deviceInfo.deviceType);
    addString(paramMap, "device_name", deviceInfo.deviceName);
    addString(paramMap, "device_manufacturer", deviceInfo.deviceManufacturer);
    addString(paramMap, "os_name", deviceInfo.osName);
    addString(paramMap, "os_version", deviceInfo.osVersion);
    addString(paramMap, "api_level", deviceInfo.apiLevel);
    addString(paramMap, "language", deviceInfo.language);
    addString(paramMap, "country", deviceInfo.country);
    addString(paramMap, "screen_size", deviceInfo.screenSize);
    addString(paramMap, "screen_format", deviceInfo.screenFormat);
    addString(paramMap, "screen_density", deviceInfo.screenDensity);
    addString(paramMap, "display_width", deviceInfo.displayWidth);
    addString(paramMap, "display_height", deviceInfo.displayHeight);
    addString(paramMap, "hardware_name", deviceInfo.hardwareName);
    addString(paramMap, "cpu_type", deviceInfo.abi);
    fillPluginKeys(paramMap);
  }
  
  private void injectDeviceInfoIds(Map<String, String> paramMap)
  {
    addString(paramMap, "mac_sha1", deviceInfo.macSha1);
    addString(paramMap, "mac_md5", deviceInfo.macShortMd5);
    addString(paramMap, "android_id", deviceInfo.androidId);
  }
  
  public ActivityPackage buildAttributionPackage()
  {
    Map localMap = getIdsParameters();
    ActivityPackage localActivityPackage = getDefaultActivityPackage(ActivityKind.ATTRIBUTION);
    localActivityPackage.setPath("attribution");
    localActivityPackage.setSuffix("");
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public ActivityPackage buildClickPackage(String paramString, long paramLong)
  {
    Map localMap = getIdsParameters();
    addString(localMap, "source", paramString);
    addDate(localMap, "click_time", paramLong);
    addString(localMap, "reftag", reftag);
    addMapJson(localMap, "params", extraParameters);
    addString(localMap, "referrer", referrer);
    addString(localMap, "deeplink", deeplink);
    injectAttribution(localMap);
    paramString = getDefaultActivityPackage(ActivityKind.CLICK);
    paramString.setPath("/sdk_click");
    paramString.setSuffix("");
    paramString.setParameters(localMap);
    return paramString;
  }
  
  public ActivityPackage buildEventPackage(AdjustEvent paramAdjustEvent)
  {
    Map localMap = getDefaultParameters();
    addInt(localMap, "event_count", activityState.eventCount);
    addString(localMap, "event_token", eventToken);
    addDouble(localMap, "revenue", revenue);
    addString(localMap, "currency", currency);
    addMapJson(localMap, "callback_params", callbackParameters);
    addMapJson(localMap, "partner_params", partnerParameters);
    ActivityPackage localActivityPackage = getDefaultActivityPackage(ActivityKind.EVENT);
    localActivityPackage.setPath("/event");
    localActivityPackage.setSuffix(getEventSuffix(paramAdjustEvent));
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
  
  public ActivityPackage buildSessionPackage()
  {
    Map localMap = getDefaultParameters();
    addDuration(localMap, "last_interval", activityState.lastInterval);
    addString(localMap, "default_tracker", adjustConfig.defaultTracker);
    ActivityPackage localActivityPackage = getDefaultActivityPackage(ActivityKind.SESSION);
    localActivityPackage.setPath("/session");
    localActivityPackage.setSuffix("");
    localActivityPackage.setParameters(localMap);
    return localActivityPackage;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.PackageBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */