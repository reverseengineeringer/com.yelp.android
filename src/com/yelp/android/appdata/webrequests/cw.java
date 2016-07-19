package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Event;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class cw
  extends k<Void, Void, List<Event>>
{
  public cw(k.b<List<Event>> paramb)
  {
    super(ApiRequest.RequestType.GET, "events/nearby", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("offset", 0);
    a("limit", 5);
  }
  
  public List<Event> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    try
    {
      JSONArray localJSONArray1 = paramJSONObject.getJSONArray("businesses");
      JSONArray localJSONArray2 = paramJSONObject.getJSONArray("users");
      paramJSONObject = Event.a(paramJSONObject.getJSONArray("events"), localJSONArray2, localJSONArray1);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */