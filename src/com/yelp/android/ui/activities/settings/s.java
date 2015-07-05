package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

abstract class s
  implements m<RemoteConfigPreferences>
{
  private final String a;
  protected final ChangeSettings c;
  
  public s(ChangeSettings paramChangeSettings, String paramString)
  {
    c = paramChangeSettings;
    a = paramString;
  }
  
  abstract void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences);
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramApiRequest = c.c().edit();
    a(paramApiRequest, a, paramRemoteConfigPreferences);
    paramApiRequest.commit();
    c.a(a);
    AppData.b().a(paramRemoteConfigPreferences);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    c.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */