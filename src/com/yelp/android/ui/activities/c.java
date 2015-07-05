package com.yelp.android.ui.activities;

import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

class c
  implements m<List<FeedEntry>>
{
  c(ActivityBadge paramActivityBadge) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<FeedEntry> paramList)
  {
    ActivityBadge.b(a).a(paramList);
    ActivityBadge.b(a).m().f();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityBadge.b(a).m().f();
    ActivityBadge.c(a).findViewById(2131493701).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */