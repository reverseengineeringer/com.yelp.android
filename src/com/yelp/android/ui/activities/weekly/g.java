package com.yelp.android.ui.activities.weekly;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;

class g
  implements m<YelpBookmark>
{
  g(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBookmark paramYelpBookmark)
  {
    ActivityWeeklyIssue.e(a).a(ActivityWeeklyIssue.g(a)).setBookmarked(true);
    ActivityWeeklyIssue.i(a).dismiss();
    ActivityWeeklyIssue.e(a).notifyDataSetChanged();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityWeeklyIssue.i(a).dismiss();
    ActivityWeeklyIssue.c(a, 2131166600);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */