package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.PrivacyPolicy;

class g
  implements m<PrivacyPolicy>
{
  g(AppData paramAppData) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, PrivacyPolicy paramPrivacyPolicy)
  {
    AppData.b().f().a(paramPrivacyPolicy);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */