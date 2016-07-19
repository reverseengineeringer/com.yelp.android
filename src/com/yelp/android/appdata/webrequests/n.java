package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.BackgroundLocationResponse;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class n
  extends b<Void, Void, BackgroundLocationResponse>
{
  public n(double paramDouble1, double paramDouble2, float paramFloat, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.GET, "/location/update", null);
    a("latitude", paramDouble1);
    a("longitude", paramDouble2);
    a("accuracy", paramFloat);
    a("is_stationary", paramBoolean);
  }
  
  public BackgroundLocationResponse a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (BackgroundLocationResponse)BackgroundLocationResponse.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */