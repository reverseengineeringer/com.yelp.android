package com.adjust.sdk;

import android.net.Uri;

public abstract interface IActivityHandler
{
  public abstract void finishedTrackingActivity(ResponseData paramResponseData);
  
  public abstract void init(AdjustConfig paramAdjustConfig);
  
  public abstract boolean isEnabled();
  
  public abstract void launchAttributionResponseTasks(AttributionResponseData paramAttributionResponseData);
  
  public abstract void launchEventResponseTasks(EventResponseData paramEventResponseData);
  
  public abstract void launchSessionResponseTasks(SessionResponseData paramSessionResponseData);
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void readOpenUrl(Uri paramUri, long paramLong);
  
  public abstract void sendReferrer(String paramString, long paramLong);
  
  public abstract void setAskingAttribution(boolean paramBoolean);
  
  public abstract void setEnabled(boolean paramBoolean);
  
  public abstract void setOfflineMode(boolean paramBoolean);
  
  public abstract void trackEvent(AdjustEvent paramAdjustEvent);
  
  public abstract boolean updateAttribution(AdjustAttribution paramAdjustAttribution);
}

/* Location:
 * Qualified Name:     com.adjust.sdk.IActivityHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */