package com.yelp.android.ui.activities.reviews;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.ActivityFullScreenAward;
import com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType;
import com.yelp.android.util.YelpLog;
import java.util.List;

class j
  implements m<ez>
{
  private int b;
  
  j(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ez paramez)
  {
    ActivityReviewComplete.a(a, true);
    if ((a.size() > 0) && (((YelpBusinessReview)a.get(0)).isFirstReview())) {
      a.startActivity(ActivityFullScreenAward.a(a, ActivityFullScreenAward.AwardType.FirstToReview, ActivityReviewComplete.f(a).getDisplayName()));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (b == 3)
    {
      YelpLog.error("ActivityReviewComplete", paramYelpException);
      ActivityReviewComplete.a(a, true);
      return;
    }
    b += 1;
    ActivityReviewComplete.e(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */