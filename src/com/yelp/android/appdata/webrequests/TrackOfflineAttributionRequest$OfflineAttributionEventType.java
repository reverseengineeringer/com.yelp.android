package com.yelp.android.appdata.webrequests;

import java.util.Locale;

public enum TrackOfflineAttributionRequest$OfflineAttributionEventType
{
  AD_CLICK,  AD_IMPRESSION,  PAGE_VIEW;
  
  private TrackOfflineAttributionRequest$OfflineAttributionEventType() {}
  
  public String toString()
  {
    return name().toLowerCase(Locale.US);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */