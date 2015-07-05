package com.kahuna.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingEvent;
import com.kahuna.sdk.location.c;
import com.kahuna.sdk.location.m;
import java.util.List;

public class KahunaCoreReceiver
  extends BroadcastReceiver
{
  private String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "unknown";
    case 1: 
      return "enter";
    }
    return "exit";
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    paramContext = GeofencingEvent.fromIntent(paramIntent);
    if (paramContext == null) {
      if (h.a) {
        Log.d("KahunaAnalytics", "Unable to create a Geofence Intent for: " + paramIntent.toString());
      }
    }
    int j;
    label135:
    label349:
    label354:
    label356:
    label365:
    do
    {
      int i;
      String str1;
      do
      {
        do
        {
          return;
          if (!paramContext.hasError()) {
            break;
          }
        } while (!h.a);
        Log.d("KahunaAnalytics", "Geofence Intent processing has an error. Code:" + paramContext.getErrorCode());
        return;
        j = paramContext.getGeofenceTransition();
        if ((j != 1) && (j != 2)) {
          break label365;
        }
        if (h.a) {
          Log.d("KahunaAnalytics", "Recevied Kahuna Geofence update!");
        }
        paramContext = paramContext.getTriggeringGeofences();
        paramIntent = new String[paramContext.size()];
        i = 0;
        if (i >= paramContext.size()) {
          break label354;
        }
        str1 = ((Geofence)paramContext.get(i)).getRequestId();
        paramIntent[i] = str1;
        if (h.a) {
          Log.d("KahunaAnalytics", "GeofenceId: " + str1 + " Transition: " + a(j));
        }
        if (!str1.contains("KahunaEngineRegion_")) {
          break label349;
        }
        if (j != 1) {
          break label356;
        }
        if (ai.a(true))
        {
          if (h.a) {
            Log.d("KahunaAnalytics", "Updated existing regions registered from before 516, ignoring false first enter event");
          }
          m.a(h.a(), str1);
          return;
        }
        String str2 = m.b(h.a());
        if ((str2 == null) || (!str2.equals(str1))) {
          break;
        }
      } while (!h.a);
      Log.d("KahunaAnalytics", "Received Geofence enter again even though we are already in region for id:" + str1);
      Log.d("KahunaAnalytics", "Not tracking geofence enter event.");
      return;
      m.a(h.a(), str1);
      for (;;)
      {
        h.b(str1.replace("KahunaEngineRegion_", ""), a(j));
        i += 1;
        break label135;
        break;
        m.c(h.a());
      }
    } while (!h.a);
    Log.d("KahunaAnalytics", "Received Unknown Geofence transition state:" + j);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getAction();
      if ("KAHUNA_PUSH_CLICKED".equals(str))
      {
        ak.a(paramContext, paramIntent);
        return;
      }
      if ("KAHUNA_GEOFENCES_UPDATED".equals(str))
      {
        a(paramContext, paramIntent);
        return;
      }
    }
    catch (Exception paramContext)
    {
      Log.d("KahunaAnalytics", "Handled exception in CoreReceiver.onReceive(): " + paramContext);
      return;
    }
    if (ActivityRecognitionResult.hasResult(paramIntent)) {
      c.a(h.a(), paramContext, paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.KahunaCoreReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */