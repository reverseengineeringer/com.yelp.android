package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ea.a;
import java.lang.ref.WeakReference;

class ActivityAbstractReviewPage$a
  implements ApiRequest.b<ea.a>
{
  private final WeakReference<ActivityAbstractReviewPage> a;
  
  public ActivityAbstractReviewPage$a(ActivityAbstractReviewPage paramActivityAbstractReviewPage)
  {
    a = new WeakReference(paramActivityAbstractReviewPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ea.a parama)
  {
    paramApiRequest = (ActivityAbstractReviewPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.a(parama);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityAbstractReviewPage localActivityAbstractReviewPage = (ActivityAbstractReviewPage)a.get();
    if (localActivityAbstractReviewPage != null) {
      localActivityAbstractReviewPage.onError(paramApiRequest, paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */