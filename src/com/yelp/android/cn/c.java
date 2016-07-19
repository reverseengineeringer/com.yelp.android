package com.yelp.android.cn;

import com.yelp.android.analytics.l;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import java.util.Map;

public class c
  extends a
{
  protected final MetricsManager c;
  protected final com.yelp.android.analytics.iris.a d;
  
  public c(MetricsManager paramMetricsManager, com.yelp.android.analytics.iris.a parama)
  {
    c = paramMetricsManager;
    d = parama;
  }
  
  protected Map<String, Object> d()
  {
    return null;
  }
  
  public void f()
  {
    c.a(h());
  }
  
  public void g()
  {
    c.b(h());
  }
  
  protected l h()
  {
    return new l(d, c(), d());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cn.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */