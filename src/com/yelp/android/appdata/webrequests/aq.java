package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class aq
  extends b<String, Void, Void>
{
  public aq(Location paramLocation, String paramString, ApiRequest.b<Void> paramb)
  {
    super(ApiRequest.RequestType.POST, "client/register", paramb);
    paramb = paramLocation;
    if (paramLocation == null) {
      paramb = AppData.b().r().c();
    }
    if (paramb != null)
    {
      b("longitude", paramb.getLongitude());
      b("latitude", paramb.getLatitude());
      b("accuracy", paramb.getAccuracy());
    }
    b("gcm_registration_id", paramString);
  }
  
  public Void a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */