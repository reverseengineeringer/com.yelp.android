package com.yelp.android.ui.activities.favoriteslist;

import com.yelp.android.appdata.webrequests.bw;
import com.yelp.android.serializable.FavoritesList;
import java.util.List;

class ActivityFavoritesList$1
  implements Runnable
{
  ActivityFavoritesList$1(ActivityFavoritesList paramActivityFavoritesList) {}
  
  public void run()
  {
    if (ActivityFavoritesList.a(a) == null)
    {
      ActivityFavoritesList.a(a, new bw(ActivityFavoritesList.b(a), ActivityFavoritesList.c(a).i().size(), ActivityFavoritesList.d(a)));
      ActivityFavoritesList.a(a).f(new Void[0]);
    }
    while (!ActivityFavoritesList.a(a).v()) {
      return;
    }
    ActivityFavoritesList.a(a, ActivityFavoritesList.a(a).b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */