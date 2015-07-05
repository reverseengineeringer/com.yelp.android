package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.av.g;
import com.yelp.android.serializable.az;
import org.json.JSONObject;

public class a
  extends g<Void, Void, RemoteConfigPreferences>
{
  protected a(m<RemoteConfigPreferences> paramm)
  {
    super(ApiRequest.RequestType.GET, "account/config", paramm);
  }
  
  public RemoteConfigPreferences a(JSONObject paramJSONObject)
  {
    return (RemoteConfigPreferences)RemoteConfigPreferences.a.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */