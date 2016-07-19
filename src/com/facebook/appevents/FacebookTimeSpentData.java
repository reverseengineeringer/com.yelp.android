package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.LoggingBehavior;
import com.facebook.internal.n;
import java.io.Serializable;
import java.util.Locale;

class FacebookTimeSpentData
  implements Serializable
{
  private static final String a = AppEventsLogger.class.getCanonicalName();
  private static final long[] b = { 300000L, 900000L, 1800000L, 3600000L, 21600000L, 43200000L, 86400000L, 172800000L, 259200000L, 604800000L, 1209600000L, 1814400000L, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L };
  private static final long serialVersionUID = 1L;
  private String firstOpenSourceApplication;
  private int interruptionCount;
  private boolean isAppActive;
  private boolean isWarmLaunch;
  private long lastActivateEventLoggedTime;
  private long lastResumeTime;
  private long lastSuspendTime;
  private long millisecondsSpentInSession;
  
  FacebookTimeSpentData()
  {
    a();
  }
  
  private FacebookTimeSpentData(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    a();
    lastResumeTime = paramLong1;
    lastSuspendTime = paramLong2;
    millisecondsSpentInSession = paramLong3;
    interruptionCount = paramInt;
  }
  
  private FacebookTimeSpentData(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString)
  {
    a();
    lastResumeTime = paramLong1;
    lastSuspendTime = paramLong2;
    millisecondsSpentInSession = paramLong3;
    interruptionCount = paramInt;
    firstOpenSourceApplication = paramString;
  }
  
  private static int a(long paramLong)
  {
    int i = 0;
    while ((i < b.length) && (b[i] < paramLong)) {
      i += 1;
    }
    return i;
  }
  
  private void a()
  {
    isAppActive = false;
    lastResumeTime = -1L;
    lastSuspendTime = -1L;
    interruptionCount = 0;
    millisecondsSpentInSession = 0L;
  }
  
  private void a(AppEventsLogger paramAppEventsLogger, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("fb_mobile_app_interruptions", interruptionCount);
    localBundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", new Object[] { Integer.valueOf(a(paramLong)) }));
    localBundle.putString("fb_mobile_launch_source", firstOpenSourceApplication);
    paramAppEventsLogger.a("fb_mobile_deactivate_app", millisecondsSpentInSession / 1000L, localBundle);
    a();
  }
  
  private boolean b()
  {
    return lastSuspendTime != -1L;
  }
  
  private boolean c()
  {
    if (!isWarmLaunch) {}
    for (boolean bool = true;; bool = false)
    {
      isWarmLaunch = true;
      return bool;
    }
  }
  
  private Object writeReplace()
  {
    return new SerializationProxyV2(lastResumeTime, lastSuspendTime, millisecondsSpentInSession, interruptionCount, firstOpenSourceApplication);
  }
  
  void onResume(AppEventsLogger paramAppEventsLogger, long paramLong, String paramString)
  {
    long l2 = 0L;
    if ((c()) || (paramLong - lastActivateEventLoggedTime > 300000L))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("fb_mobile_launch_source", paramString);
      paramAppEventsLogger.a("fb_mobile_activate_app", localBundle);
      lastActivateEventLoggedTime = paramLong;
    }
    if (isAppActive)
    {
      n.a(LoggingBehavior.APP_EVENTS, a, "Resume for active app");
      return;
    }
    long l1;
    if (b())
    {
      l1 = paramLong - lastSuspendTime;
      if (l1 >= 0L) {
        break label178;
      }
      n.a(LoggingBehavior.APP_EVENTS, a, "Clock skew detected");
      l1 = l2;
    }
    label178:
    for (;;)
    {
      if (l1 > 60000L) {
        a(paramAppEventsLogger, l1);
      }
      for (;;)
      {
        if (interruptionCount == 0) {
          firstOpenSourceApplication = paramString;
        }
        lastResumeTime = paramLong;
        isAppActive = true;
        return;
        l1 = 0L;
        break;
        if (l1 > 1000L) {
          interruptionCount += 1;
        }
      }
    }
  }
  
  void onSuspend(AppEventsLogger paramAppEventsLogger, long paramLong)
  {
    long l1 = 0L;
    if (!isAppActive)
    {
      n.a(LoggingBehavior.APP_EVENTS, a, "Suspend for inactive app");
      return;
    }
    long l2 = paramLong - lastResumeTime;
    if (l2 < 0L) {
      n.a(LoggingBehavior.APP_EVENTS, a, "Clock skew detected");
    }
    for (;;)
    {
      millisecondsSpentInSession = (l1 + millisecondsSpentInSession);
      lastSuspendTime = paramLong;
      isAppActive = false;
      return;
      l1 = l2;
    }
  }
  
  private static class SerializationProxyV2
    implements Serializable
  {
    private static final long serialVersionUID = 6L;
    private final String firstOpenSourceApplication;
    private final int interruptionCount;
    private final long lastResumeTime;
    private final long lastSuspendTime;
    private final long millisecondsSpentInSession;
    
    SerializationProxyV2(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString)
    {
      lastResumeTime = paramLong1;
      lastSuspendTime = paramLong2;
      millisecondsSpentInSession = paramLong3;
      interruptionCount = paramInt;
      firstOpenSourceApplication = paramString;
    }
    
    private Object readResolve()
    {
      return new FacebookTimeSpentData(lastResumeTime, lastSuspendTime, millisecondsSpentInSession, interruptionCount, firstOpenSourceApplication, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.FacebookTimeSpentData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */