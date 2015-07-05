package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.i;

class eg
  implements i
{
  eg(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = AppData.b().m().h();
    if (paramApiRequest != null) {
      paramApiRequest.b(true);
    }
    a.hideLoadingDialog();
    a.setResult(-1);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.showYesNoDialog(paramYelpException.getMessageResource(), 2131166464, 2131165457, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */