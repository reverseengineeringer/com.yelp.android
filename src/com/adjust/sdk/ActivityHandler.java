package com.adjust.sdk;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

public class ActivityHandler
  extends HandlerThread
  implements IActivityHandler
{
  private static final String ACTIVITY_STATE_NAME = "Activity state";
  private static final String ADJUST_PREFIX = "adjust_";
  private static final String ATTRIBUTION_NAME = "Attribution";
  private static long BACKGROUND_TIMER_INTERVAL = 0L;
  private static final String BACKGROUND_TIMER_NAME = "Background timer";
  private static long FOREGROUND_TIMER_INTERVAL = 0L;
  private static final String FOREGROUND_TIMER_NAME = "Foreground timer";
  private static long FOREGROUND_TIMER_START = 0L;
  private static long SESSION_INTERVAL = 0L;
  private static long SUBSESSION_INTERVAL = 0L;
  private static final String TIME_TRAVEL = "Time travel!";
  private ActivityState activityState;
  private AdjustConfig adjustConfig;
  private AdjustAttribution attribution;
  private IAttributionHandler attributionHandler;
  private TimerOnce backgroundTimer;
  private DeviceInfo deviceInfo;
  private TimerCycle foregroundTimer;
  private Handler internalHandler;
  private InternalState internalState;
  private ILogger logger;
  private IPackageHandler packageHandler;
  private ScheduledExecutorService scheduler;
  private ISdkClickHandler sdkClickHandler;
  
  private ActivityHandler(AdjustConfig paramAdjustConfig)
  {
    super("Adjust", 1);
    setDaemon(true);
    start();
    init(paramAdjustConfig);
    logger = AdjustFactory.getLogger();
    if ("production".equals(environment))
    {
      logger.setLogLevel(LogLevel.ASSERT);
      internalHandler = new Handler(getLooper());
      internalState = new InternalState();
      readAttribution(context);
      readActivityState(context);
      if (activityState != null) {
        break label236;
      }
    }
    label236:
    for (internalState.enabled = true;; internalState.enabled = activityState.enabled)
    {
      internalState.offline = false;
      internalState.background = true;
      internalHandler.post(new Runnable()
      {
        public void run()
        {
          ActivityHandler.this.initInternal();
        }
      });
      FOREGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
      FOREGROUND_TIMER_START = AdjustFactory.getTimerStart();
      BACKGROUND_TIMER_INTERVAL = AdjustFactory.getTimerInterval();
      foregroundTimer = new TimerCycle(new Runnable()
      {
        public void run()
        {
          ActivityHandler.this.foregroundTimerFired();
        }
      }, FOREGROUND_TIMER_START, FOREGROUND_TIMER_INTERVAL, "Foreground timer");
      scheduler = Executors.newSingleThreadScheduledExecutor();
      backgroundTimer = new TimerOnce(scheduler, new Runnable()
      {
        public void run()
        {
          ActivityHandler.this.backgroundTimerFired();
        }
      }, "Background timer");
      return;
      logger.setLogLevel(logLevel);
      break;
    }
  }
  
  private void backgroundTimerFired()
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.backgroundTimerFiredInternal();
      }
    });
  }
  
  private void backgroundTimerFiredInternal()
  {
    packageHandler.sendFirstPackage();
  }
  
  private boolean checkActivityState(ActivityState paramActivityState)
  {
    if (paramActivityState == null)
    {
      logger.error("Missing activity state", new Object[0]);
      return false;
    }
    return true;
  }
  
  private void checkAttributionState()
  {
    if (!checkActivityState(activityState)) {}
    while ((activityState.subsessionCount <= 1) || ((attribution != null) && (!activityState.askingAttribution))) {
      return;
    }
    attributionHandler.getAttribution();
  }
  
  private boolean checkEvent(AdjustEvent paramAdjustEvent)
  {
    if (paramAdjustEvent == null)
    {
      logger.error("Event missing", new Object[0]);
      return false;
    }
    if (!paramAdjustEvent.isValid())
    {
      logger.error("Event not initialized correctly", new Object[0]);
      return false;
    }
    return true;
  }
  
  private Intent createDeeplinkIntent(Uri paramUri)
  {
    if (adjustConfig.deepLinkComponent == null) {}
    for (paramUri = new Intent("android.intent.action.VIEW", paramUri);; paramUri = new Intent("android.intent.action.VIEW", paramUri, adjustConfig.context, adjustConfig.deepLinkComponent))
    {
      paramUri.setFlags(268435456);
      paramUri.setPackage(adjustConfig.context.getPackageName());
      return paramUri;
    }
  }
  
  public static boolean deleteActivityState(Context paramContext)
  {
    return paramContext.deleteFile("AdjustIoActivityState");
  }
  
  public static boolean deleteAttribution(Context paramContext)
  {
    return paramContext.deleteFile("AdjustAttribution");
  }
  
  private void endInternal()
  {
    if (!toSend()) {
      pauseSending();
    }
    if (updateActivityState(System.currentTimeMillis())) {
      writeActivityState();
    }
  }
  
  private void foregroundTimerFired()
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.foregroundTimerFiredInternal();
      }
    });
  }
  
  private void foregroundTimerFiredInternal()
  {
    if (paused()) {
      stopForegroundTimer();
    }
    do
    {
      return;
      packageHandler.sendFirstPackage();
    } while (!updateActivityState(System.currentTimeMillis()));
    writeActivityState();
  }
  
  public static ActivityHandler getInstance(AdjustConfig paramAdjustConfig)
  {
    if (paramAdjustConfig == null)
    {
      AdjustFactory.getLogger().error("AdjustConfig missing", new Object[0]);
      return null;
    }
    if (!paramAdjustConfig.isValid())
    {
      AdjustFactory.getLogger().error("AdjustConfig not initialized correctly", new Object[0]);
      return null;
    }
    if (processName != null)
    {
      int i = Process.myPid();
      Object localObject = (ActivityManager)context.getSystemService("activity");
      if (localObject == null) {
        return null;
      }
      localObject = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
      while (((Iterator)localObject).hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
        if (pid == i) {
          if (!processName.equalsIgnoreCase(processName))
          {
            AdjustFactory.getLogger().info("Skipping initialization in background process (%s)", new Object[] { processName });
            return null;
          }
        }
      }
    }
    return new ActivityHandler(paramAdjustConfig);
  }
  
  private boolean hasChangedState(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    if (paramBoolean1 != paramBoolean2) {
      return true;
    }
    if (paramBoolean1)
    {
      logger.debug(paramString1, new Object[0]);
      return false;
    }
    logger.debug(paramString2, new Object[0]);
    return false;
  }
  
  private void initInternal()
  {
    SESSION_INTERVAL = AdjustFactory.getSessionInterval();
    SUBSESSION_INTERVAL = AdjustFactory.getSubsessionInterval();
    deviceInfo = new DeviceInfo(adjustConfig.context, adjustConfig.sdkPrefix);
    if (adjustConfig.eventBufferingEnabled) {
      logger.info("Event buffering is enabled", new Object[0]);
    }
    if (Util.getPlayAdId(adjustConfig.context) == null)
    {
      logger.warn("Unable to get Google Play Services Advertising ID at start time", new Object[0]);
      if ((deviceInfo.macSha1 == null) && (deviceInfo.macShortMd5 == null) && (deviceInfo.androidId == null)) {
        logger.error("Unable to get any device id's. Please check if Proguard is correctly set with Adjust SDK", new Object[0]);
      }
    }
    for (;;)
    {
      if (adjustConfig.defaultTracker != null) {
        logger.info("Default tracker: '%s'", new Object[] { adjustConfig.defaultTracker });
      }
      if (adjustConfig.referrer != null) {
        sendReferrer(adjustConfig.referrer, adjustConfig.referrerClickTime);
      }
      packageHandler = AdjustFactory.getPackageHandler(this, adjustConfig.context, toSend());
      attributionHandler = AdjustFactory.getAttributionHandler(this, getAttributionPackage(), toSend(), adjustConfig.hasAttributionChangedListener());
      sdkClickHandler = AdjustFactory.getSdkClickHandler(toSend());
      return;
      logger.info("Google Play Services Advertising ID read correctly at start time", new Object[0]);
    }
  }
  
  private void launchAttributionListener(Handler paramHandler)
  {
    if (adjustConfig.onAttributionChangedListener == null) {
      return;
    }
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        adjustConfig.onAttributionChangedListener.onAttributionChanged(attribution);
      }
    });
  }
  
  private void launchAttributionResponseTasksInternal(AttributionResponseData paramAttributionResponseData)
  {
    Handler localHandler = new Handler(adjustConfig.context.getMainLooper());
    if (updateAttribution(attribution)) {
      launchAttributionListener(localHandler);
    }
  }
  
  private void launchDeeplinkMain(Intent paramIntent, String paramString)
  {
    if (adjustConfig.context.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0) {}
    for (int i = 1; i == 0; i = 0)
    {
      logger.error("Unable to open deep link (%s)", new Object[] { paramString });
      return;
    }
    logger.info("Open deep link (%s)", new Object[] { paramString });
    adjustConfig.context.startActivity(paramIntent);
  }
  
  private void launchEventResponseTasksInternal(final EventResponseData paramEventResponseData)
  {
    Handler localHandler = new Handler(adjustConfig.context.getMainLooper());
    if ((success) && (adjustConfig.onEventTrackingSucceededListener != null))
    {
      logger.debug("Launching success event tracking listener", new Object[0]);
      localHandler.post(new Runnable()
      {
        public void run()
        {
          adjustConfig.onEventTrackingSucceededListener.onFinishedEventTrackingSucceeded(paramEventResponseData.getSuccessResponseData());
        }
      });
    }
    while ((success) || (adjustConfig.onEventTrackingFailedListener == null)) {
      return;
    }
    logger.debug("Launching failed event tracking listener", new Object[0]);
    localHandler.post(new Runnable()
    {
      public void run()
      {
        adjustConfig.onEventTrackingFailedListener.onFinishedEventTrackingFailed(paramEventResponseData.getFailureResponseData());
      }
    });
  }
  
  private void launchSessionResponseListener(final SessionResponseData paramSessionResponseData, Handler paramHandler)
  {
    if ((success) && (adjustConfig.onSessionTrackingSucceededListener != null))
    {
      logger.debug("Launching success session tracking listener", new Object[0]);
      paramHandler.post(new Runnable()
      {
        public void run()
        {
          adjustConfig.onSessionTrackingSucceededListener.onFinishedSessionTrackingSucceeded(paramSessionResponseData.getSuccessResponseData());
        }
      });
    }
    while ((success) || (adjustConfig.onSessionTrackingFailedListener == null)) {
      return;
    }
    logger.debug("Launching failed session tracking listener", new Object[0]);
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        adjustConfig.onSessionTrackingFailedListener.onFinishedSessionTrackingFailed(paramSessionResponseData.getFailureResponseData());
      }
    });
  }
  
  private void launchSessionResponseTasksInternal(SessionResponseData paramSessionResponseData)
  {
    Handler localHandler = new Handler(adjustConfig.context.getMainLooper());
    if (updateAttribution(attribution)) {
      launchAttributionListener(localHandler);
    }
    launchSessionResponseListener(paramSessionResponseData, localHandler);
    prepareDeeplink(paramSessionResponseData, localHandler);
  }
  
  private void pauseSending()
  {
    attributionHandler.pauseSending();
    packageHandler.pauseSending();
    sdkClickHandler.pauseSending();
  }
  
  private boolean paused()
  {
    return (internalState.isOffline()) || (!isEnabled());
  }
  
  private void prepareDeeplink(final ResponseData paramResponseData, Handler paramHandler)
  {
    if (jsonResponse == null) {}
    do
    {
      return;
      paramResponseData = jsonResponse.optString("deeplink", null);
    } while (paramResponseData == null);
    final Uri localUri = Uri.parse(paramResponseData);
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        boolean bool = true;
        if (adjustConfig.onDeeplinkResponseListener != null) {
          bool = adjustConfig.onDeeplinkResponseListener.launchReceivedDeeplink(localUri);
        }
        if (bool) {
          ActivityHandler.this.launchDeeplinkMain(val$deeplinkIntent, paramResponseData);
        }
      }
    });
  }
  
  private void processSession()
  {
    long l1 = System.currentTimeMillis();
    if (activityState == null)
    {
      activityState = new ActivityState();
      activityState.sessionCount = 1;
      transferSessionPackage(l1);
      activityState.resetSessionAttributes(l1);
      activityState.enabled = internalState.isEnabled();
      writeActivityState();
      return;
    }
    long l2 = l1 - activityState.lastActivity;
    if (l2 < 0L)
    {
      logger.error("Time travel!", new Object[0]);
      activityState.lastActivity = l1;
      writeActivityState();
      return;
    }
    ActivityState localActivityState;
    if (l2 > SESSION_INTERVAL)
    {
      localActivityState = activityState;
      sessionCount += 1;
      activityState.lastInterval = l2;
      transferSessionPackage(l1);
      activityState.resetSessionAttributes(l1);
      writeActivityState();
      return;
    }
    if (l2 > SUBSESSION_INTERVAL)
    {
      localActivityState = activityState;
      subsessionCount += 1;
      localActivityState = activityState;
      sessionLength = (l2 + sessionLength);
      activityState.lastActivity = l1;
      logger.verbose("Started subsession %d of session %d", new Object[] { Integer.valueOf(activityState.subsessionCount), Integer.valueOf(activityState.sessionCount) });
      writeActivityState();
      return;
    }
    logger.verbose("Time span since last activity too short for a new subsession", new Object[0]);
  }
  
  private PackageBuilder queryStringClickPackageBuilder(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return null;
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    AdjustAttribution localAdjustAttribution = new AdjustAttribution();
    logger.verbose("Reading query string (%s)", new Object[] { paramString });
    paramString = paramString.split("&");
    int j = paramString.length;
    while (i < j)
    {
      readQueryString(paramString[i], localLinkedHashMap, localAdjustAttribution);
      i += 1;
    }
    paramString = (String)localLinkedHashMap.remove("reftag");
    long l = System.currentTimeMillis();
    PackageBuilder localPackageBuilder = new PackageBuilder(adjustConfig, deviceInfo, activityState, l);
    extraParameters = localLinkedHashMap;
    attribution = localAdjustAttribution;
    reftag = paramString;
    return localPackageBuilder;
  }
  
  private void readActivityState(Context paramContext)
  {
    try
    {
      activityState = ((ActivityState)Util.readObject(paramContext, "AdjustIoActivityState", "Activity state", ActivityState.class));
      return;
    }
    catch (Exception paramContext)
    {
      logger.error("Failed to read %s file (%s)", new Object[] { "Activity state", paramContext.getMessage() });
      activityState = null;
    }
  }
  
  private void readAttribution(Context paramContext)
  {
    try
    {
      attribution = ((AdjustAttribution)Util.readObject(paramContext, "AdjustAttribution", "Attribution", AdjustAttribution.class));
      return;
    }
    catch (Exception paramContext)
    {
      logger.error("Failed to read %s file (%s)", new Object[] { "Attribution", paramContext.getMessage() });
      attribution = null;
    }
  }
  
  private void readOpenUrlInternal(Uri paramUri, long paramLong)
  {
    if (paramUri == null) {}
    Object localObject;
    do
    {
      return;
      String str = paramUri.getQuery();
      localObject = str;
      if (str == null)
      {
        localObject = str;
        if (paramUri.toString().length() > 0) {
          localObject = "";
        }
      }
      localObject = queryStringClickPackageBuilder((String)localObject);
    } while (localObject == null);
    deeplink = paramUri.toString();
    paramUri = ((PackageBuilder)localObject).buildClickPackage("deeplink", paramLong);
    sdkClickHandler.sendSdkClick(paramUri);
  }
  
  private boolean readQueryString(String paramString, Map<String, String> paramMap, AdjustAttribution paramAdjustAttribution)
  {
    Object localObject = paramString.split("=");
    if (localObject.length != 2) {}
    do
    {
      do
      {
        do
        {
          return false;
          paramString = localObject[0];
        } while (!paramString.startsWith("adjust_"));
        localObject = localObject[1];
      } while (((String)localObject).length() == 0);
      paramString = paramString.substring("adjust_".length());
    } while (paramString.length() == 0);
    if (!trySetAttribution(paramAdjustAttribution, paramString, (String)localObject)) {
      paramMap.put(paramString, localObject);
    }
    return true;
  }
  
  private void resumeSending()
  {
    attributionHandler.resumeSending();
    packageHandler.resumeSending();
    sdkClickHandler.resumeSending();
  }
  
  private void saveAttribution(AdjustAttribution paramAdjustAttribution)
  {
    attribution = paramAdjustAttribution;
    writeAttribution();
  }
  
  private void sendReferrerInternal(String paramString, long paramLong)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    PackageBuilder localPackageBuilder;
    do
    {
      return;
      localPackageBuilder = queryStringClickPackageBuilder(paramString);
    } while (localPackageBuilder == null);
    referrer = paramString;
    paramString = localPackageBuilder.buildClickPackage("reftag", paramLong);
    sdkClickHandler.sendSdkClick(paramString);
  }
  
  private void startBackgroundTimer()
  {
    if (!toSend()) {}
    while (backgroundTimer.getFireIn() > 0L) {
      return;
    }
    backgroundTimer.startIn(BACKGROUND_TIMER_INTERVAL);
  }
  
  private void startForegroundTimer()
  {
    if (paused()) {
      return;
    }
    foregroundTimer.start();
  }
  
  private void startInternal()
  {
    if ((activityState != null) && (!activityState.enabled)) {
      return;
    }
    updateHandlersStatusAndSendInternal();
    processSession();
    checkAttributionState();
  }
  
  private void stopBackgroundTimer()
  {
    backgroundTimer.cancel();
  }
  
  private void stopForegroundTimer()
  {
    foregroundTimer.suspend();
  }
  
  private boolean toSend()
  {
    if (paused()) {
      return false;
    }
    if (adjustConfig.sendInBackground) {
      return true;
    }
    return internalState.isForeground();
  }
  
  private void trackEventInternal(AdjustEvent paramAdjustEvent)
  {
    if (!checkActivityState(activityState)) {}
    while ((!isEnabled()) || (!checkEvent(paramAdjustEvent))) {
      return;
    }
    long l = System.currentTimeMillis();
    ActivityState localActivityState = activityState;
    eventCount += 1;
    updateActivityState(l);
    paramAdjustEvent = new PackageBuilder(adjustConfig, deviceInfo, activityState, l).buildEventPackage(paramAdjustEvent);
    packageHandler.addPackage(paramAdjustEvent);
    if (adjustConfig.eventBufferingEnabled) {
      logger.info("Buffered event %s", new Object[] { paramAdjustEvent.getSuffix() });
    }
    for (;;)
    {
      if ((adjustConfig.sendInBackground) && (internalState.isBackground())) {
        startBackgroundTimer();
      }
      writeActivityState();
      return;
      packageHandler.sendFirstPackage();
    }
  }
  
  private void transferSessionPackage(long paramLong)
  {
    ActivityPackage localActivityPackage = new PackageBuilder(adjustConfig, deviceInfo, activityState, paramLong).buildSessionPackage();
    packageHandler.addPackage(localActivityPackage);
    packageHandler.sendFirstPackage();
  }
  
  private boolean trySetAttribution(AdjustAttribution paramAdjustAttribution, String paramString1, String paramString2)
  {
    if (paramString1.equals("tracker"))
    {
      trackerName = paramString2;
      return true;
    }
    if (paramString1.equals("campaign"))
    {
      campaign = paramString2;
      return true;
    }
    if (paramString1.equals("adgroup"))
    {
      adgroup = paramString2;
      return true;
    }
    if (paramString1.equals("creative"))
    {
      creative = paramString2;
      return true;
    }
    return false;
  }
  
  private boolean updateActivityState(long paramLong)
  {
    if (!checkActivityState(activityState)) {}
    long l;
    do
    {
      return false;
      l = paramLong - activityState.lastActivity;
    } while (l > SESSION_INTERVAL);
    activityState.lastActivity = paramLong;
    if (l < 0L) {
      logger.error("Time travel!", new Object[0]);
    }
    for (;;)
    {
      return true;
      ActivityState localActivityState = activityState;
      sessionLength += l;
      localActivityState = activityState;
      timeSpent = (l + timeSpent);
    }
  }
  
  private void updateHandlersStatusAndSend()
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.updateHandlersStatusAndSendInternal();
      }
    });
  }
  
  private void updateHandlersStatusAndSendInternal()
  {
    if (!toSend()) {
      pauseSending();
    }
    do
    {
      return;
      resumeSending();
    } while (adjustConfig.eventBufferingEnabled);
    packageHandler.sendFirstPackage();
  }
  
  private void updateStatus(boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    if (paramBoolean)
    {
      logger.info(paramString1, new Object[0]);
      updateHandlersStatusAndSend();
      return;
    }
    if (paused())
    {
      logger.info(paramString2, new Object[0]);
      return;
    }
    logger.info(paramString3, new Object[0]);
    updateHandlersStatusAndSend();
  }
  
  private void writeActivityState()
  {
    try
    {
      Util.writeObject(activityState, adjustConfig.context, "AdjustIoActivityState", "Activity state");
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void writeAttribution()
  {
    Util.writeObject(attribution, adjustConfig.context, "AdjustAttribution", "Attribution");
  }
  
  public void finishedTrackingActivity(ResponseData paramResponseData)
  {
    if ((paramResponseData instanceof SessionResponseData)) {
      attributionHandler.checkSessionResponse((SessionResponseData)paramResponseData);
    }
    while (!(paramResponseData instanceof EventResponseData)) {
      return;
    }
    launchEventResponseTasks((EventResponseData)paramResponseData);
  }
  
  public ActivityPackage getAttributionPackage()
  {
    long l = System.currentTimeMillis();
    return new PackageBuilder(adjustConfig, deviceInfo, activityState, l).buildAttributionPackage();
  }
  
  public InternalState getInternalState()
  {
    return internalState;
  }
  
  public void init(AdjustConfig paramAdjustConfig)
  {
    adjustConfig = paramAdjustConfig;
  }
  
  public boolean isEnabled()
  {
    if (activityState != null) {
      return activityState.enabled;
    }
    return internalState.isEnabled();
  }
  
  public void launchAttributionResponseTasks(final AttributionResponseData paramAttributionResponseData)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.launchAttributionResponseTasksInternal(paramAttributionResponseData);
      }
    });
  }
  
  public void launchEventResponseTasks(final EventResponseData paramEventResponseData)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.launchEventResponseTasksInternal(paramEventResponseData);
      }
    });
  }
  
  public void launchSessionResponseTasks(final SessionResponseData paramSessionResponseData)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.launchSessionResponseTasksInternal(paramSessionResponseData);
      }
    });
  }
  
  public void onPause()
  {
    internalState.background = true;
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.stopForegroundTimer();
        ActivityHandler.this.startBackgroundTimer();
        logger.verbose("Subsession end", new Object[0]);
        ActivityHandler.this.endInternal();
      }
    });
  }
  
  public void onResume()
  {
    internalState.background = false;
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.stopBackgroundTimer();
        ActivityHandler.this.startForegroundTimer();
        logger.verbose("Subsession start", new Object[0]);
        ActivityHandler.this.startInternal();
      }
    });
  }
  
  public void readOpenUrl(final Uri paramUri, final long paramLong)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.readOpenUrlInternal(paramUri, paramLong);
      }
    });
  }
  
  public void sendReferrer(final String paramString, final long paramLong)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        ActivityHandler.this.sendReferrerInternal(paramString, paramLong);
      }
    });
  }
  
  public void setAskingAttribution(boolean paramBoolean)
  {
    activityState.askingAttribution = paramBoolean;
    writeActivityState();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (!hasChangedState(isEnabled(), paramBoolean, "Adjust already enabled", "Adjust already disabled")) {
      return;
    }
    internalState.enabled = paramBoolean;
    if (activityState == null)
    {
      if (!paramBoolean) {}
      for (paramBoolean = bool1;; paramBoolean = false)
      {
        updateStatus(paramBoolean, "Package handler and attribution handler will start as paused due to the SDK being disabled", "Package and attribution handler will still start as paused due to the SDK being offline", "Package handler and attribution handler will start as active due to the SDK being enabled");
        return;
      }
    }
    activityState.enabled = paramBoolean;
    writeActivityState();
    if (!paramBoolean) {}
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      updateStatus(paramBoolean, "Pausing package handler and attribution handler due to SDK being disabled", "Package and attribution handler remain paused due to SDK being offline", "Resuming package handler and attribution handler due to SDK being enabled");
      return;
    }
  }
  
  public void setOfflineMode(boolean paramBoolean)
  {
    if (!hasChangedState(internalState.isOffline(), paramBoolean, "Adjust already in offline mode", "Adjust already in online mode")) {
      return;
    }
    internalState.offline = paramBoolean;
    if (activityState == null)
    {
      updateStatus(paramBoolean, "Package handler and attribution handler will start paused due to SDK being offline", "Package and attribution handler will still start as paused due to SDK being disabled", "Package handler and attribution handler will start as active due to SDK being online");
      return;
    }
    updateStatus(paramBoolean, "Pausing package and attribution handler to put SDK offline mode", "Package and attribution handler remain paused due to SDK being disabled", "Resuming package handler and attribution handler to put SDK in online mode");
  }
  
  public void trackEvent(final AdjustEvent paramAdjustEvent)
  {
    internalHandler.post(new Runnable()
    {
      public void run()
      {
        if (activityState == null)
        {
          logger.warn("Event triggered before first application launch.\nThis will trigger the SDK start and an install without user interaction.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information.", new Object[0]);
          ActivityHandler.this.startInternal();
        }
        ActivityHandler.this.trackEventInternal(paramAdjustEvent);
      }
    });
  }
  
  public boolean updateAttribution(AdjustAttribution paramAdjustAttribution)
  {
    if (paramAdjustAttribution == null) {}
    while (paramAdjustAttribution.equals(attribution)) {
      return false;
    }
    saveAttribution(paramAdjustAttribution);
    return true;
  }
  
  public class InternalState
  {
    boolean background;
    boolean enabled;
    boolean offline;
    
    public InternalState() {}
    
    public boolean isBackground()
    {
      return background;
    }
    
    public boolean isDisabled()
    {
      return !enabled;
    }
    
    public boolean isEnabled()
    {
      return enabled;
    }
    
    public boolean isForeground()
    {
      return !background;
    }
    
    public boolean isOffline()
    {
      return offline;
    }
    
    public boolean isOnline()
    {
      return !offline;
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */