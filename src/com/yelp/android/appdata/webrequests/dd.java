package com.yelp.android.appdata.webrequests;

import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;

class dd
  implements m<RemoteConfigPreferences>
{
  dd(dc paramdc) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    AppData.b().a(paramRemoteConfigPreferences);
    dc.a(a, paramRemoteConfigPreferences);
    if (dc.a(a) != null)
    {
      dc.a(a).onSuccess(paramApiRequest, paramRemoteConfigPreferences);
      dc.a(a, null);
    }
    AppData.b().sendBroadcast(new Intent("com.yelp.android.intent.new_account_config"));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (dc.a(a) != null)
    {
      dc.a(a).onError(paramApiRequest, paramYelpException);
      dc.a(a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */