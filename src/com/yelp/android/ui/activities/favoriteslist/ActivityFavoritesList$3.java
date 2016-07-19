package com.yelp.android.ui.activities.favoriteslist;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.ui.util.ScrollToLoadListView;

class ActivityFavoritesList$3
  implements ApiRequest.b<FavoritesList>
{
  ActivityFavoritesList$3(ActivityFavoritesList paramActivityFavoritesList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, FavoritesList paramFavoritesList)
  {
    if (ActivityFavoritesList.c(a) == null) {
      ActivityFavoritesList.a(a, paramFavoritesList);
    }
    for (;;)
    {
      a.disableLoading();
      a.clearError();
      ActivityFavoritesList.e(a).setVisibility(0);
      if (!ActivityFavoritesList.f(a)) {
        ActivityFavoritesList.g(a);
      }
      ActivityFavoritesList.h(a).a(ActivityFavoritesList.c(a));
      ActivityFavoritesList.i(a);
      return;
      ActivityFavoritesList.c(a).a(paramFavoritesList.i());
      ActivityFavoritesList.c(a).b(paramFavoritesList.h());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityFavoritesList.e(a).setVisibility(8);
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */