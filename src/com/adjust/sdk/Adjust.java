package com.adjust.sdk;

import android.content.Context;
import android.net.Uri;

public class Adjust
{
  private static AdjustInstance defaultInstance;
  
  public static void appWillOpenUrl(Uri paramUri)
  {
    getDefaultInstance().appWillOpenUrl(paramUri);
  }
  
  public static AdjustInstance getDefaultInstance()
  {
    try
    {
      if (defaultInstance == null) {
        defaultInstance = new AdjustInstance();
      }
      AdjustInstance localAdjustInstance = defaultInstance;
      return localAdjustInstance;
    }
    finally {}
  }
  
  public static void getGoogleAdId(Context paramContext, OnDeviceIdsRead paramOnDeviceIdsRead)
  {
    Util.getGoogleAdId(paramContext, paramOnDeviceIdsRead);
  }
  
  public static boolean isEnabled()
  {
    return getDefaultInstance().isEnabled();
  }
  
  public static void onCreate(AdjustConfig paramAdjustConfig)
  {
    getDefaultInstance().onCreate(paramAdjustConfig);
  }
  
  public static void onPause()
  {
    getDefaultInstance().onPause();
  }
  
  public static void onResume()
  {
    getDefaultInstance().onResume();
  }
  
  public static void setEnabled(boolean paramBoolean)
  {
    getDefaultInstance().setEnabled(paramBoolean);
  }
  
  public static void setOfflineMode(boolean paramBoolean)
  {
    getDefaultInstance().setOfflineMode(paramBoolean);
  }
  
  public static void setReferrer(String paramString)
  {
    getDefaultInstance().sendReferrer(paramString);
  }
  
  public static void trackEvent(AdjustEvent paramAdjustEvent)
  {
    getDefaultInstance().trackEvent(paramAdjustEvent);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Adjust
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */