package com.kahuna.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.f;
import com.google.android.gms.location.h;
import com.kahuna.sdk.location.c;
import com.kahuna.sdk.location.i;
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
    paramContext = h.a(paramIntent);
    if (paramContext == null) {
      if (l.a) {
        Log.d("Kahuna", "Unable to create a Geofence Intent for: " + paramIntent.toString());
      }
    }
    int j;
    label135:
    label356:
    label361:
    label363:
    label372:
    do
    {
      int i;
      String str1;
      do
      {
        do
        {
          return;
          if (!paramContext.a()) {
            break;
          }
        } while (!l.a);
        Log.d("Kahuna", "Geofence Intent processing has an error. Code:" + paramContext.b());
        return;
        j = paramContext.c();
        if ((j != 1) && (j != 2)) {
          break label372;
        }
        if (l.a) {
          Log.d("Kahuna", "Recevied Kahuna Geofence update!");
        }
        paramContext = paramContext.d();
        paramIntent = new String[paramContext.size()];
        i = 0;
        if (i >= paramContext.size()) {
          break label361;
        }
        str1 = ((f)paramContext.get(i)).a();
        paramIntent[i] = str1;
        if (l.a) {
          Log.d("Kahuna", "GeofenceId: " + str1 + " Transition: " + a(j));
        }
        if (!str1.contains("KahunaEngineRegion_")) {
          break label356;
        }
        if (j != 1) {
          break label363;
        }
        if (u.a(true))
        {
          if (l.a) {
            Log.d("Kahuna", "Updated existing regions registered from before 516, ignoring false first enter event");
          }
          i.a(l.j(), str1);
          return;
        }
        String str2 = i.c(l.j());
        if ((str2 == null) || (!str2.equals(str1))) {
          break;
        }
      } while (!l.a);
      Log.d("Kahuna", "Received Geofence enter again even though we are already in region for id:" + str1);
      Log.d("Kahuna", "Not tracking geofence enter event.");
      return;
      i.a(l.j(), str1);
      for (;;)
      {
        str1 = str1.replace("KahunaEngineRegion_", "");
        l.j().a(str1, a(j));
        i += 1;
        break label135;
        break;
        i.d(l.j());
      }
    } while (!l.a);
    Log.d("Kahuna", "Received Unknown Geofence transition state:" + j);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getAction();
      if ("KAHUNA_PUSH_CLICKED".equals(str))
      {
        y.a(paramContext, paramIntent);
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
      Log.d("Kahuna", "Handled exception in CoreReceiver.onReceive(): " + paramContext);
      paramContext.printStackTrace();
      return;
    }
    if (ActivityRecognitionResult.a(paramIntent)) {
      c.a(paramContext, paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.KahunaCoreReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */