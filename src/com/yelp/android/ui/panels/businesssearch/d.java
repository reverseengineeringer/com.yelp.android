package com.yelp.android.ui.panels.businesssearch;

import com.yelp.android.serializable.RecentCheckIn;
import com.yelp.android.serializable.User;
import com.yelp.android.util.ag;

class d
  implements ag<RecentCheckIn>
{
  d(c paramc) {}
  
  public String a(RecentCheckIn paramRecentCheckIn)
  {
    return paramRecentCheckIn.getUser().getNameWithoutPeriod();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */