package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import java.lang.ref.WeakReference;

class g
  implements m<ez>
{
  private final WeakReference<ActivityBusinessReviewsPage> a;
  
  public g(ActivityBusinessReviewsPage paramActivityBusinessReviewsPage)
  {
    a = new WeakReference(paramActivityBusinessReviewsPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ez paramez)
  {
    paramApiRequest = (ActivityBusinessReviewsPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.b(paramez);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityBusinessReviewsPage localActivityBusinessReviewsPage = (ActivityBusinessReviewsPage)a.get();
    if (localActivityBusinessReviewsPage != null) {
      localActivityBusinessReviewsPage.onError(paramApiRequest, paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */