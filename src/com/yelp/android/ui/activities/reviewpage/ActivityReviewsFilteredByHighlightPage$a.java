package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dx.a;
import java.lang.ref.WeakReference;

class ActivityReviewsFilteredByHighlightPage$a
  implements ApiRequest.b<dx.a>
{
  private final WeakReference<ActivityReviewsFilteredByHighlightPage> a;
  
  public ActivityReviewsFilteredByHighlightPage$a(ActivityReviewsFilteredByHighlightPage paramActivityReviewsFilteredByHighlightPage)
  {
    a = new WeakReference(paramActivityReviewsFilteredByHighlightPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dx.a parama)
  {
    paramApiRequest = (ActivityReviewsFilteredByHighlightPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.b(parama);
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
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */