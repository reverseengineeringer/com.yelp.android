package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class ActivityReviewPager$2
  implements ApiRequest.b<dy.a>
{
  ActivityReviewPager$2(ActivityReviewPager paramActivityReviewPager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dy.a parama)
  {
    paramApiRequest = a.iterator();
    while (paramApiRequest.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)paramApiRequest.next();
      localYelpBusinessReview.a(new Locale(localYelpBusinessReview.I(), c.getCountry()));
    }
    a.a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewPager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */