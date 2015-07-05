package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.util.YelpLog;

class c
  implements m
{
  c(AppData paramAppData) {}
  
  public void onError(ApiRequest paramApiRequest, YelpException paramYelpException)
  {
    YelpLog.e(this, "Error checking email confirmation.");
  }
  
  public void onSuccess(ApiRequest paramApiRequest, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      AppData.b().m().a(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */