package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog.Builder;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.YelpLog;

final class u
  implements i
{
  private final String b;
  private final int c;
  
  public u(ActivityReviewWrite paramActivityReviewWrite, String paramString, int paramInt)
  {
    b = paramString;
    c = paramInt;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ActivityReviewWrite.a(a, b);
    ActivityReviewWrite.b(a, c);
    ActivityReviewWrite.a(a, ReviewState.DRAFTED);
    if (ActivityReviewWrite.j(a)) {
      ActivityReviewWrite.d(a).post(new v(this));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramYelpException.getMessageResource() != YelpException.YPErrorServerResponse) && (paramYelpException.getMessageResource() != YelpException.YPErrorNotConnectedToInternet)) {
      YelpLog.error(a, paramYelpException);
    }
    if (ActivityReviewWrite.j(a))
    {
      ActivityReviewWrite.a(a, false);
      ActivityReviewWrite.d(a).setVisibility(8);
      new AlertDialog.Builder(a).setMessage(a.getString(paramYelpException.getMessageResource())).setPositiveButton(17039370, null).setNegativeButton(2131165797, new w(this)).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */