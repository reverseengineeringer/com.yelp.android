package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy.a;

class ActivityAbstractReviewPager$1
  implements ApiRequest.b<dy.a>
{
  ActivityAbstractReviewPager$1(ActivityAbstractReviewPager paramActivityAbstractReviewPager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dy.a parama)
  {
    a.a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */