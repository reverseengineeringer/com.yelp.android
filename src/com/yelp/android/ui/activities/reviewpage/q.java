package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.appdata.webrequests.m;
import java.lang.ref.WeakReference;

class q
  implements m<ex>
{
  private final WeakReference<ActivityReviewsFilteredByHighlightPage> a;
  
  public q(ActivityReviewsFilteredByHighlightPage paramActivityReviewsFilteredByHighlightPage)
  {
    a = new WeakReference(paramActivityReviewsFilteredByHighlightPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ex paramex)
  {
    paramApiRequest = (ActivityReviewsFilteredByHighlightPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.b(paramex);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityReviewsFilteredByHighlightPage localActivityReviewsFilteredByHighlightPage = (ActivityReviewsFilteredByHighlightPage)a.get();
    if (localActivityReviewsFilteredByHighlightPage != null) {
      localActivityReviewsFilteredByHighlightPage.onError(paramApiRequest, paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */