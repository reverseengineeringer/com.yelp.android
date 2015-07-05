package com.yelp.android.ui.activities.weekly;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;

class f
  implements i
{
  f(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ActivityWeeklyIssue.i(a).dismiss();
    ActivityWeeklyIssue.e(a).a(ActivityWeeklyIssue.g(a)).setBookmarked(false);
    ActivityWeeklyIssue.e(a).notifyDataSetChanged();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityWeeklyIssue.i(a).dismiss();
    ActivityWeeklyIssue.c(a, 2131166600);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */