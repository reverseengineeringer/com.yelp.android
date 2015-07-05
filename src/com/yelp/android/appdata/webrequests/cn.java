package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Location;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class cn
  extends g<Void, Void, Location>
{
  public cn(String paramString, m<Location> paramm)
  {
    super(ApiRequest.RequestType.GET, "geocode", paramm);
    addUrlParam("address", paramString);
  }
  
  public Location a(JSONObject paramJSONObject)
  {
    Location localLocation = null;
    if (!paramJSONObject.isNull("location")) {
      localLocation = (Location)Location.CREATOR.parse(paramJSONObject.getJSONObject("location"));
    }
    return localLocation;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */