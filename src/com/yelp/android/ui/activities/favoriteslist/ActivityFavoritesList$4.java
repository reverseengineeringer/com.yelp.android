package com.yelp.android.ui.activities.favoriteslist;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.c;
import java.util.Map;

class ActivityFavoritesList$4
  implements a.a
{
  ActivityFavoritesList$4(ActivityFavoritesList paramActivityFavoritesList) {}
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    ActivityFavoritesList.a(a, paramYelpBusiness);
    Map localMap = ActivityFavoritesList.a(paramYelpBusiness.aD(), ActivityFavoritesList.b(a));
    AppData.a(EventIri.FavoritesListClickBookmark, localMap);
    if (ActivityFavoritesList.j(a).U()) {}
    for (EventIri localEventIri = EventIri.FavoritesListRemoveBookmark;; localEventIri = EventIri.FavoritesListAddBookmark)
    {
      AppData.a(localEventIri, localMap);
      ActivityFavoritesList.k(a).a(paramYelpBusiness);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */