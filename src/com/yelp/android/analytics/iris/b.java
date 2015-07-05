package com.yelp.android.analytics.iris;

import com.yelp.android.analytics.c;

public abstract interface b
{
  public abstract AnalyticCategory getCategory();
  
  public abstract c[] getGaCustomDimenLinks();
  
  public abstract GoogleAnalyticsCategory getGoogleAnalyticsCategory();
  
  public abstract String getIriName();
  
  public abstract boolean isExcludedFromGoogleAnalytics();
  
  public abstract boolean isSampledInGoogleAnalytics();
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.iris.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */