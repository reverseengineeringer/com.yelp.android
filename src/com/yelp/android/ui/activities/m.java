package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cs;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ui.activities.nearby.ComboListFragment;
import com.yelp.android.ui.activities.nearby.ComboMapFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

class m
  extends j<cs>
{
  m(ActivityBookmarks paramActivityBookmarks) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cs paramcs)
  {
    ActivityBookmarks.a(a, paramcs);
    a.f();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.n();
    ActivityBookmarks.c(a).clear();
    ActivityBookmarks.d(a).b().setVisibility(4);
    ActivityBookmarks.a(a, true);
    if (ActivityBookmarks.e(a) != null)
    {
      ActivityBookmarks.e(a).m().setVisibility(4);
      ActivityBookmarks.e(a).a(null);
    }
    ActivityBookmarks.f(a).notifyDataSetChanged();
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */