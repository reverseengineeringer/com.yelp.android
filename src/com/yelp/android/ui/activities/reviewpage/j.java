package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class j
  implements m<ez>
{
  j(ActivityReviewPager paramActivityReviewPager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ez paramez)
  {
    paramApiRequest = a.iterator();
    while (paramApiRequest.hasNext())
    {
      YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)paramApiRequest.next();
      localYelpBusinessReview.setLocale(new Locale(localYelpBusinessReview.getLanguage(), c.getCountry()));
    }
    a.a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */