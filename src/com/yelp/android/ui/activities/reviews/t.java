package com.yelp.android.ui.activities.reviews;

import android.support.v7.app.ActionBar;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.ErrorType;
import java.util.List;

class t
  implements m<List<YelpBusiness>>
{
  t(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    if (paramList.size() > 0)
    {
      paramApiRequest = (YelpBusiness)paramList.get(0);
      ActivityReviewWrite.a(a, paramApiRequest);
      ActivityReviewWrite.f(a);
      return;
    }
    ActivityReviewWrite.a(a, null);
    ActivityReviewWrite.d(a).setVisibility(8);
    ActivityReviewWrite.a(a, ActivityReviewWrite.g(a));
    ActivityReviewWrite.h(a).a(ErrorType.GENERIC_ERROR);
    ActivityReviewWrite.h(a).setVisibility(0);
    a.getSupportActionBar().b(2131165763);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityReviewWrite.a(a, null);
    ActivityReviewWrite.d(a).setVisibility(8);
    ActivityReviewWrite.a(a, ActivityReviewWrite.i(a));
    ActivityReviewWrite.h(a).a(ErrorType.getTypeFromException(paramYelpException));
    ActivityReviewWrite.h(a).setVisibility(0);
    a.getSupportActionBar().b(2131165763);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */