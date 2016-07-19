package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Location;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class cd
  extends b<Void, Void, Location>
{
  public cd(String paramString, ApiRequest.b<Location> paramb)
  {
    super(ApiRequest.RequestType.GET, "geocode", paramb);
    a("address", paramString);
  }
  
  public Location a(JSONObject paramJSONObject)
    throws JSONException
  {
    Location localLocation = null;
    if (!paramJSONObject.isNull("location")) {
      localLocation = (Location)Location.CREATOR.parse(paramJSONObject.getJSONObject("location"));
    }
    return localLocation;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */