package com.yelp.android.bs;

import com.yelp.android.analytics.GaCustomDimenLink;
import com.yelp.android.analytics.c;
import com.yelp.android.analytics.iris.GoogleAnalyticsCategory;
import com.yelp.android.appdata.webrequests.core.MetricsManager.GaTrackerType;

public abstract class b
{
  protected static c[] a(c... paramVarArgs)
  {
    return paramVarArgs;
  }
  
  public abstract GoogleAnalyticsCategory a();
  
  public boolean b()
  {
    return false;
  }
  
  public c[] e()
  {
    return GaCustomDimenLink.EMPTY_ARRAY;
  }
  
  public MetricsManager.GaTrackerType f()
  {
    return MetricsManager.GaTrackerType.default_tracker;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */