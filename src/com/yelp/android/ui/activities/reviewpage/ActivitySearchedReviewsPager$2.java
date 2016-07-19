package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ea.a;

class ActivitySearchedReviewsPager$2
  implements ApiRequest.b<ea.a>
{
  ActivitySearchedReviewsPager$2(ActivitySearchedReviewsPager paramActivitySearchedReviewsPager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ea.a parama)
  {
    a.a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivitySearchedReviewsPager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */