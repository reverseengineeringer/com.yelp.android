package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog.Builder;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.YelpLog;

final class ActivityReviewWrite$a
  implements c.a
{
  private final String b;
  private final int c;
  
  public ActivityReviewWrite$a(ActivityReviewWrite paramActivityReviewWrite, String paramString, int paramInt)
  {
    b = paramString;
    c = paramInt;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ActivityReviewWrite.a(a, b);
    ActivityReviewWrite.b(a, c);
    ActivityReviewWrite.a(a, ReviewState.DRAFTED);
    if (ActivityReviewWrite.k(a)) {
      ActivityReviewWrite.f(a).post(new ActivityReviewWrite.a.1(this));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramYelpException.getMessageResource() != YelpException.YPErrorServerResponse) && (paramYelpException.getMessageResource() != YelpException.YPErrorNotConnectedToInternet)) {
      YelpLog.remoteError(a, paramYelpException);
    }
    if (ActivityReviewWrite.k(a))
    {
      ActivityReviewWrite.a(a, false);
      ActivityReviewWrite.f(a).setVisibility(8);
      new AlertDialog.Builder(a).setMessage(a.getString(paramYelpException.getMessageResource())).setPositiveButton(17039370, null).setNegativeButton(2131165883, new ActivityReviewWrite.a.2(this)).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */