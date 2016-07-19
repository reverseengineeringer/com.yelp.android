package com.yelp.android.ui.activities.localissue;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.LocalIssueResponse;

class ActivityLocalIssue$3
  implements ApiRequest.b<LocalIssueResponse>
{
  ActivityLocalIssue$3(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, LocalIssueResponse paramLocalIssueResponse)
  {
    ActivityLocalIssue.a(a, paramLocalIssueResponse);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityLocalIssue.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */