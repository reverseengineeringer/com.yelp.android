package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy.a;
import java.lang.ref.WeakReference;

class ActivityBusinessReviewsPage$a
  implements ApiRequest.b<dy.a>
{
  private final WeakReference<ActivityBusinessReviewsPage> a;
  
  public ActivityBusinessReviewsPage$a(ActivityBusinessReviewsPage paramActivityBusinessReviewsPage)
  {
    a = new WeakReference(paramActivityBusinessReviewsPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dy.a parama)
  {
    paramApiRequest = (ActivityBusinessReviewsPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.b(parama);
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
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityBusinessReviewsPage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */