package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.PanelLoading;

class ActivityReviewWrite$8
  implements ApiRequest.b<ReviewState>
{
  ActivityReviewWrite$8(ActivityReviewWrite paramActivityReviewWrite) {}
  
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
      ActivityReviewWrite.a(a, ActivityReviewWrite.j(a).H());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityReviewWrite.f(a).setVisibility(8);
    new AlertDialog.Builder(a).setMessage(a.getString(2131165770)).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        a.finish();
      }
    }).show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */