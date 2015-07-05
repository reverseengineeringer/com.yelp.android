package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fd;
import com.yelp.android.appdata.webrequests.m;
import java.lang.ref.WeakReference;

class d
  implements m<fd>
{
  private final WeakReference<ActivityAbstractReviewPage> a;
  
  public d(ActivityAbstractReviewPage paramActivityAbstractReviewPage)
  {
    a = new WeakReference(paramActivityAbstractReviewPage);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fd paramfd)
  {
    paramApiRequest = (ActivityAbstractReviewPage)a.get();
    if (paramApiRequest != null) {
      paramApiRequest.a(paramfd);
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
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */