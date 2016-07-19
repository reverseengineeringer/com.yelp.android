package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Location;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class bh
  extends b<Void, Void, Location>
{
  public bh(String paramString, ApiRequest.b<Location> paramb)
  {
    super(ApiRequest.RequestType.POST, "elite/invitation/accept", paramb);
    b("invite_code", paramString);
  }
  
  public Location a(JSONObject paramJSONObject)
    throws JSONException
  {
    Location localLocation = null;
    if (!paramJSONObject.isNull("elite_city")) {
      localLocation = (Location)Location.CREATOR.parse(paramJSONObject.getJSONObject("elite_city"));
    }
    return localLocation;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */