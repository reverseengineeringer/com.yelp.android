package com.yelp.android.appdata.webrequests.core;

import android.os.Handler;

class MetricsManager$1
  implements Runnable
{
  MetricsManager$1(MetricsManager paramMetricsManager) {}
  
  public void run()
  {
    MetricsManager.a(a).removeCallbacks(this);
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.core.MetricsManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */