package com.kahuna.sdk.location;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.kahuna.sdk.l;

public class h
{
  protected static boolean a(Context paramContext)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    if (i == 0)
    {
      if (l.u()) {
        Log.d("Kahuna", "Google Play services is available. yay!");
      }
      return true;
    }
    if (l.u()) {
      Log.d("Kahuna", "Google Play services is NOT available. Code: " + i);
    }
    return false;
  }
  
  protected static boolean a(Context paramContext, String paramString)
  {
    boolean bool;
    if (paramContext.checkCallingOrSelfPermission(paramString) == 0)
    {
      bool = true;
      if (!bool) {
        break label52;
      }
      if (l.u()) {
        Log.d("Kahuna", paramString + " permission available.");
      }
    }
    label52:
    while (!l.u())
    {
      return bool;
      bool = false;
      break;
    }
    Log.d("Kahuna", "Permission " + paramString + " NOT available");
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */