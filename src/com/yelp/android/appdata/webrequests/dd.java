package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Preferences;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class dd
  extends b<String, Void, Preferences>
{
  public dd(ApiRequest.b<Preferences> paramb)
  {
    super(ApiRequest.RequestType.GET, "preferences", paramb);
  }
  
  public Preferences a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Preferences)Preferences.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */