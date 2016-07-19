package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;

class FacebookConnectManager$4
  implements c.a
{
  FacebookConnectManager$4(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ((b)FacebookConnectManager.c(a)).hideLoadingDialog();
    FacebookConnectManager.a(a, false);
    FacebookConnectManager.a(a).a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    FacebookConnectManager.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.FacebookConnectManager.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */