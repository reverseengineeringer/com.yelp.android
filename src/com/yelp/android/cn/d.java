package com.yelp.android.cn;

import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.appdata.webrequests.core.MetricsManager;

public class d
{
  private final MetricsManager a;
  
  public d(MetricsManager paramMetricsManager)
  {
    a = paramMetricsManager;
  }
  
  public c a()
  {
    return new c(a, TimingIri.ApplicationStartup);
  }
  
  public c b()
  {
    return new c(a, TimingIri.BusinessDetailsLoad);
  }
  
  public b c()
  {
    return new b(a, TimingIri.BusinessDetailsFullyLoaded);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cn.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */