package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog.Builder;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.PanelLoading;

class r
  implements m<ReviewState>
{
  r(ActivityReviewWrite paramActivityReviewWrite) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ReviewState paramReviewState)
  {
    if (paramReviewState == ReviewState.NOT_STARTED) {
      ActivityReviewWrite.a(a, 0);
    }
    for (;;)
    {
      ActivityReviewWrite.a(a, paramReviewState);
      a.finish();
      return;
      ActivityReviewWrite.a(a, ActivityReviewWrite.e(a).getUserReviewRating());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityReviewWrite.d(a).setVisibility(8);
    new AlertDialog.Builder(a).setMessage(a.getString(2131165692)).setPositiveButton(17039370, new s(this)).show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */