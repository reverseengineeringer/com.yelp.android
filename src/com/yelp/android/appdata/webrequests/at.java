package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class at
  extends g<String, Void, Void>
{
  public at(Location paramLocation, String paramString1, String paramString2, m<Void> paramm)
  {
    super(ApiRequest.RequestType.POST, "client/register", paramm);
    paramString2 = paramLocation;
    if (paramLocation == null) {
      paramString2 = AppData.b().n().c();
    }
    if (paramString2 != null)
    {
      addPostParam("longitude", paramString2.getLongitude());
      addPostParam("latitude", paramString2.getLatitude());
      addPostParam("accuracy", paramString2.getAccuracy());
    }
    addPostParam("gcm_registration_id", paramString1);
  }
  
  public Void a(JSONObject paramJSONObject)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */