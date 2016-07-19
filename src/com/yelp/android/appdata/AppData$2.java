package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.util.YelpLog;

class AppData$2
  implements ApiRequest.b<Boolean>
{
  AppData$2(AppData paramAppData) {}
  
  public void a(ApiRequest paramApiRequest, Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue()) {
      AppData.b().q().a(true);
    }
  }
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    YelpLog.e(this, "Error checking email confirmation.");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */