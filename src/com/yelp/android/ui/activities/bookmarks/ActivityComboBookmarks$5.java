package com.yelp.android.ui.activities.bookmarks;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.a;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.nearby.ComboListFragment;
import com.yelp.android.ui.activities.nearby.ComboMapFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.ErrorType;
import java.util.List;

class ActivityComboBookmarks$5
  extends k.b<ListBookmarksRequest.a>
{
  ActivityComboBookmarks$5(ActivityComboBookmarks paramActivityComboBookmarks) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ListBookmarksRequest.a parama)
  {
    ActivityComboBookmarks.a(a, parama);
    a.f();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.n();
    ActivityComboBookmarks.c(a).clear();
    ActivityComboBookmarks.d(a).b().setVisibility(4);
    ActivityComboBookmarks.a(a, true);
    if (ActivityComboBookmarks.e(a) != null)
    {
      ActivityComboBookmarks.e(a).m().setVisibility(4);
      ActivityComboBookmarks.e(a).a(null);
    }
    ActivityComboBookmarks.f(a).notifyDataSetChanged();
    a.populateError(ErrorType.getTypeFromException(paramYelpException), ActivityComboBookmarks.g(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */