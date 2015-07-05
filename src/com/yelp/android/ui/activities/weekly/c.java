package com.yelp.android.ui.activities.weekly;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.WeeklyIssueResponse;

class c
  implements m<WeeklyIssueResponse>
{
  c(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, WeeklyIssueResponse paramWeeklyIssueResponse)
  {
    ActivityWeeklyIssue.a(a, paramWeeklyIssueResponse);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityWeeklyIssue.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */