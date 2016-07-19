package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.UserLocation;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class g
  extends b<Void, Void, List<UserLocation>>
{
  public g(ApiRequest.b<List<UserLocation>> paramb)
  {
    super(ApiRequest.RequestType.GET, "account/locations", paramb);
  }
  
  public List<UserLocation> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = paramJSONObject.getJSONArray("locations");
    int j = paramJSONObject.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(UserLocation.CREATOR.parse(paramJSONObject.getJSONObject(i)));
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */