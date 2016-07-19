package com.yelp.android.ui.activities.reviewpage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.ReviewDeleteResponse;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.Locale;

class ActivityAbstractReviewPager$2
  implements ApiRequest.b<ReviewDeleteResponse>
{
  ActivityAbstractReviewPager$2(ActivityAbstractReviewPager paramActivityAbstractReviewPager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ReviewDeleteResponse paramReviewDeleteResponse)
  {
    a.hideLoadingDialog();
    paramApiRequest = paramReviewDeleteResponse.b();
    if (!paramReviewDeleteResponse.a()) {
      AppData.b().q().p().l();
    }
    for (;;)
    {
      AppData.a(EventIri.ReviewDeleted);
      paramReviewDeleteResponse = new Intent();
      paramReviewDeleteResponse.putExtra("deleted_review", ActivityAbstractReviewPager.a(a));
      paramReviewDeleteResponse.putExtra("previous_review", paramApiRequest);
      a.setResult(1052, paramReviewDeleteResponse);
      a.finish();
      return;
      paramReviewDeleteResponse = AppData.b().g().h();
      paramApiRequest.a(new Locale(paramApiRequest.I(), paramReviewDeleteResponse.getCountry()));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    new AlertDialog.Builder(a).setTitle(2131165851).setMessage(paramYelpException.getLocalizedMessage()).setNeutralButton(2131165976, null).create().show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */