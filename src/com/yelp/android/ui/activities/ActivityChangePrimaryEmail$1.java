package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.ui.util.as;

class ActivityChangePrimaryEmail$1
  implements c.a
{
  ActivityChangePrimaryEmail$1(ActivityChangePrimaryEmail paramActivityChangePrimaryEmail) {}
  
  public void a(ApiRequest paramApiRequest, Void paramVoid)
  {
    a.hideLoadingDialog();
    a.setResult(-1);
    ActivityChangePrimaryEmail.b(a).b(ActivityChangePrimaryEmail.a(a).b());
    a.finish();
  }
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    as.a(paramYelpException.getMessageResource(), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityChangePrimaryEmail.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */