package com.adjust.sdk;

import android.net.Uri;

public class AdjustInstance
{
  private ActivityHandler activityHandler;
  private String referrer;
  private long referrerClickTime;
  
  private boolean checkActivityHandler()
  {
    if (activityHandler == null)
    {
      getLogger().error("Adjust not initialized correctly", new Object[0]);
      return false;
    }
    return true;
  }
  
  private static ILogger getLogger()
  {
    return AdjustFactory.getLogger();
  }
  
  public void appWillOpenUrl(Uri paramUri)
  {
    if (!checkActivityHandler()) {
      return;
    }
    long l = System.currentTimeMillis();
    activityHandler.readOpenUrl(paramUri, l);
  }
  
  public boolean isEnabled()
  {
    if (!checkActivityHandler()) {
      return false;
    }
    return activityHandler.isEnabled();
  }
  
  public void onCreate(AdjustConfig paramAdjustConfig)
  {
    if (activityHandler != null)
    {
      getLogger().error("Adjust already initialized", new Object[0]);
      return;
    }
    referrer = referrer;
    referrerClickTime = referrerClickTime;
    activityHandler = ActivityHandler.getInstance(paramAdjustConfig);
  }
  
  public void onPause()
  {
    if (!checkActivityHandler()) {
      return;
    }
    activityHandler.onPause();
  }
  
  public void onResume()
  {
    if (!checkActivityHandler()) {
      return;
    }
    activityHandler.onResume();
  }
  
  public void sendReferrer(String paramString)
  {
    long l = System.currentTimeMillis();
    if (activityHandler == null)
    {
      referrer = paramString;
      referrerClickTime = l;
      return;
    }
    activityHandler.sendReferrer(paramString, l);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if (!checkActivityHandler()) {
      return;
    }
    activityHandler.setEnabled(paramBoolean);
  }
  
  public void setOfflineMode(boolean paramBoolean)
  {
    if (!checkActivityHandler()) {
      return;
    }
    activityHandler.setOfflineMode(paramBoolean);
  }
  
  public void trackEvent(AdjustEvent paramAdjustEvent)
  {
    if (!checkActivityHandler()) {
      return;
    }
    activityHandler.trackEvent(paramAdjustEvent);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */