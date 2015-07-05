package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.b;
import java.util.Map;

public abstract interface a
{
  public abstract long getComponentId();
  
  public abstract b getIri();
  
  public abstract Map<String, Object> getParametersForIri(b paramb);
  
  public abstract String getRequestIdForIri(b paramb);
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */