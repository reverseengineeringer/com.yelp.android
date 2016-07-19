package com.yelp.android.ui.activities.reviews;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.ActivityFullScreenAward;
import com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.d;
import java.util.List;

class ActivityReviewComplete$4
  implements ApiRequest.b<dy.a>
{
  private int b;
  
  ActivityReviewComplete$4(ActivityReviewComplete paramActivityReviewComplete) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dy.a parama)
  {
    ActivityReviewComplete.a(a, true);
    paramApiRequest = d.a(a.getIntent().getIntArrayExtra("extra.review_share_types"), ShareRequest.ShareType.values());
    if ((a.size() > 0) && (((YelpBusinessReview)a.get(0)).D())) {
      a.startActivity(ActivityFullScreenAward.a(a, ActivityFullScreenAward.AwardType.FirstToReview, ActivityReviewComplete.g(a).z(), ((YelpBusinessReview)a.get(0)).a(), ShareService.ShareObjectType.REVIEW, paramApiRequest));
    }
    while ((paramApiRequest == null) || (paramApiRequest.isEmpty())) {
      return;
    }
    a.startService(ShareService.a(a, ShareService.ShareObjectType.REVIEW, ActivityReviewComplete.h(a), paramApiRequest, false));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (b == 3)
    {
      YelpLog.remoteError("ActivityReviewComplete", paramYelpException);
      ActivityReviewComplete.a(a, true);
      return;
    }
    b += 1;
    ActivityReviewComplete.f(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewComplete.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */