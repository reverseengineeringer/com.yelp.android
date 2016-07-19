package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;

class ActivityTwitterSignIn$3
  implements c.a
{
  ActivityTwitterSignIn$3(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.hideLoadingDialog();
    a.setResult(-1);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.showYesNoDialog(paramYelpException.getMessageResource(), 2131166469, 2131165583, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTwitterSignIn.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */