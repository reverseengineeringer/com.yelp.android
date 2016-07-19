package com.yelp.android.analytics;

import java.util.Map;

public abstract interface a
{
  public abstract long getComponentId();
  
  public abstract com.yelp.android.analytics.iris.a getIri();
  
  public abstract Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama);
  
  public abstract String getRequestIdForIri(com.yelp.android.analytics.iris.a parama);
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */