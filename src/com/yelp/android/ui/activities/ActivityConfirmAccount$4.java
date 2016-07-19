package com.yelp.android.ui.activities;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.util.YelpLog;

class ActivityConfirmAccount$4
  implements ApiRequest.b<Boolean>
{
  ActivityConfirmAccount$4(ActivityConfirmAccount paramActivityConfirmAccount) {}
  
  public void a(ApiRequest paramApiRequest, Boolean paramBoolean)
  {
    a.hideLoadingDialog();
    if (paramBoolean.booleanValue())
    {
      AppData.b().q().a(true);
      AppData.a(EventIri.ConfirmEmailDetectedConfirmed);
      if (ActivityConfirmAccount.b(a) != null) {
        a.startActivity(ActivityConfirmAccount.b(a));
      }
      paramApiRequest = (Intent)a.getIntent().getParcelableExtra("embedded_intent_data");
      a.setResult(-1, paramApiRequest);
      a.finish();
    }
  }
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    YelpLog.remoteError(this, "Error checking email confirmation.");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */