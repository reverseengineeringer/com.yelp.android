package com.yelp.android.ui.activities.weekly;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.WeeklyIssueResponse;

class d
  extends j<WeeklyIssueResponse>
{
  d(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, WeeklyIssueResponse paramWeeklyIssueResponse)
  {
    ActivityWeeklyIssue.a(a, paramWeeklyIssueResponse);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityWeeklyIssue.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */