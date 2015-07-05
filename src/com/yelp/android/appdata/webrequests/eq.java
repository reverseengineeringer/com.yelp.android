package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Location;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class eq
  extends g<Void, Void, er>
{
  public eq(double paramDouble1, double paramDouble2, m<er> paramm)
  {
    super(ApiRequest.RequestType.GET, "geocode/reverse", paramm);
    addUrlParam("latitude", paramDouble1);
    addUrlParam("longitude", paramDouble2);
  }
  
  public er a(JSONObject paramJSONObject)
  {
    Location localLocation = null;
    if (!paramJSONObject.isNull("location")) {
      localLocation = (Location)Location.CREATOR.parse(paramJSONObject.getJSONObject("location"));
    }
    return new er(localLocation, paramJSONObject.getBoolean("yelp_available"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */