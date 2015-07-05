package com.brightcove.player.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.Video;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Emits(events={"didSetAnalyticsBaseParams", "error"})
@ListensFor(events={"addAnalyticsBaseParams", "completed", "didSeekTo", "didSetVideo", "progress", "readyToPlay", "setAnalyticsBaseParams"})
public class Analytics
  extends AbstractComponent
{
  private static final String baseURL = "http://metrics.brightcove.com/tracker";
  private static final String defaultName = "BCPlayer for Android";
  private static final String deviceOS = "android";
  private static final String domain = "videocloud";
  private static final int engagementPeriod = 10000;
  private final Map<String, String> baseParams = new HashMap();
  public String destination;
  private String deviceType;
  private int endTime = 0;
  private boolean hasStarted = false;
  public String playerName = "BCPlayer for Android";
  private int startTime = 0;
  
  public Analytics(EventEmitter paramEventEmitter, Context paramContext)
  {
    this(paramEventEmitter, paramContext, Analytics.class);
  }
  
  protected Analytics(EventEmitter paramEventEmitter, Context paramContext, Class<? extends Component> paramClass)
  {
    super(paramEventEmitter, paramClass);
    setAppName(paramContext);
    setDestination(paramContext);
    initializeEvents(paramEventEmitter);
    deviceType = getDeviceType(paramContext);
  }
  
  private void emitDidSetEvent()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("baseParams", baseParams);
    eventEmitter.emit("didSetAnalyticsBaseParams", localHashMap);
  }
  
  private String getDeviceType(Context paramContext)
  {
    if (paramContext != null) {
      try
      {
        if (((TelephonyManager)paramContext.getSystemService("phone")).getPhoneType() != 0) {
          return "mobile";
        }
      }
      catch (UnsupportedOperationException paramContext)
      {
        return "tablet";
      }
      catch (IllegalStateException paramContext)
      {
        return "tablet";
      }
    }
    return "tablet";
  }
  
  private void initializeEvents(EventEmitter paramEventEmitter)
  {
    paramEventEmitter.on("addAnalyticsBaseParams", new Analytics.1(this));
    paramEventEmitter.on("setAnalyticsBaseParams", new Analytics.2(this));
    paramEventEmitter.on("didSetVideo", new Analytics.3(this));
    paramEventEmitter.on("didSeekTo", new Analytics.4(this));
    paramEventEmitter.on("progress", new Analytics.5(this));
    paramEventEmitter.on("completed", new Analytics.6(this));
  }
  
  private void sendVideoAnalyticsRequest(Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    paramMap = (Video)properties.get("video");
    if (paramMap != null)
    {
      String str = paramMap.getId();
      if (!str.isEmpty()) {
        ((Map)localObject).put("video", str);
      }
      paramMap = paramMap.getStringProperty("pubId");
      if ((paramMap != null) && (!paramMap.isEmpty())) {
        ((Map)localObject).put("account", paramMap);
      }
    }
    sendAnalyticsRequest(paramEvent, paramString, (Map)localObject);
  }
  
  private void sendVideoEngagementRequest(Event paramEvent, int paramInt1, int paramInt2)
  {
    paramInt1 /= 1000;
    paramInt2 = paramInt2 / 1000 - 1;
    if (paramInt2 < paramInt1) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("range", String.format("%d..%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
    sendVideoAnalyticsRequest(paramEvent, "video_engagement", localHashMap);
  }
  
  private void setAppName(Context paramContext)
  {
    Object localObject;
    if (paramContext != null)
    {
      localObject = paramContext.getApplicationContext();
      if (localObject != null)
      {
        localObject = ((Context)localObject).getPackageManager();
        if (localObject == null) {}
      }
    }
    try
    {
      playerName = ((String)((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 0)));
      if (playerName == null) {
        playerName = "BCPlayer for Android";
      }
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        playerName = null;
      }
    }
  }
  
  private void setDestination(Context paramContext)
  {
    destination = ("market://details?id=" + paramContext.getClass().getPackage().getName());
  }
  
  @SuppressLint({"NewApi"})
  protected Map<String, String> sendAnalyticsRequest(Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(baseParams);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    if (!localHashMap.containsKey("account")) {
      return null;
    }
    paramEvent = (Video)properties.get("video");
    if (paramEvent != null)
    {
      int i = paramEvent.getDuration();
      paramEvent = paramEvent.getStringProperty("name");
      if (i > 0) {
        localHashMap.put("video_duration", "" + i / 1000);
      }
      if ((paramEvent != null) && (paramEvent.isEmpty())) {
        localHashMap.put("video_name", paramEvent);
      }
    }
    localHashMap.put("event", paramString);
    localHashMap.put("domain", "videocloud");
    localHashMap.put("device_os", "android");
    localHashMap.put("device_type", deviceType);
    localHashMap.put("device_os_version", Build.VERSION.RELEASE);
    localHashMap.put("time", "" + new Date().getTime());
    localHashMap.put("embed", playerName);
    localHashMap.put("player_name", playerName);
    localHashMap.put("destination", destination);
    paramEvent = new Analytics.HttpAsyncTask(this);
    paramString = new HashMap[1];
    paramString[0] = localHashMap;
    if (Build.VERSION.SDK_INT >= 14) {
      paramEvent.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramString);
    }
    for (;;)
    {
      return localHashMap;
      paramEvent.execute(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.analytics.Analytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */