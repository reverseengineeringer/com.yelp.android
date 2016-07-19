package com.yelp.android.appdata;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;

class AppData$3
  implements c.a
{
  AppData$3(AppData paramAppData) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    AppData.b().q().a(true);
    AppData.a(EventIri.ConfirmEmailSilently);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 402)) {
      AppData.b().q().a(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */