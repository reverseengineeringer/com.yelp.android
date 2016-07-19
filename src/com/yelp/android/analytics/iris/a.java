package com.yelp.android.analytics.iris;

import com.yelp.android.bs.b;

public abstract interface a
{
  public abstract AnalyticCategory getCategory();
  
  public abstract b getGoogleAnalyticMetric();
  
  public abstract String getIriName();
  
  public abstract boolean isExcludedFromGoogleAnalytics();
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.iris.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */