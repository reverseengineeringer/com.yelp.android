package com.yelp.android.ui.activities.favoriteslist;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.c.a;

class ActivityFavoritesList$5
  implements c.a
{
  ActivityFavoritesList$5(ActivityFavoritesList paramActivityFavoritesList) {}
  
  public void a(boolean paramBoolean)
  {
    ActivityFavoritesList.j(a).a(paramBoolean);
    ActivityFavoritesList.a(a, null);
    ActivityFavoritesList.h(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */