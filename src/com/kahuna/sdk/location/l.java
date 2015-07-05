package com.kahuna.sdk.location;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.kahuna.sdk.h;

public class l
{
  protected static boolean a(Context paramContext)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    if (i == 0)
    {
      if (h.p()) {
        Log.d("KahunaEngine", "Google Play services is available. yay!");
      }
      return true;
    }
    if (h.p()) {
      Log.d("KahunaEngine", "Google Play services is NOT available. Code: " + i);
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
      if (h.p()) {
        Log.d("KahunaEngine", paramString + " permission available.");
      }
    }
    label52:
    while (!h.p())
    {
      return bool;
      bool = false;
      break;
    }
    Log.d("KahunaEngine", "Permission " + paramString + " NOT available");
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */