package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.i;

class ff
  implements i
{
  ff(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ((ez)FacebookConnectManager.c(a)).hideLoadingDialog();
    FacebookConnectManager.a(a, false);
    paramApiRequest = AppData.b().m().h();
    if (paramApiRequest != null) {
      paramApiRequest.a(true);
    }
    for (;;)
    {
      FacebookConnectManager.a(a).a(a);
      return;
      AppData.b().m().f();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    FacebookConnectManager.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */