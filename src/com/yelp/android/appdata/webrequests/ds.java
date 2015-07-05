package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Event;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ds
  extends h<Void, Void, List<Event>>
{
  public ds(j<List<Event>> paramj)
  {
    super(ApiRequest.RequestType.GET, "events/nearby", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addUrlParam("offset", 0);
    addUrlParam("limit", 5);
  }
  
  public List<Event> a(JSONObject paramJSONObject)
  {
    try
    {
      JSONArray localJSONArray1 = paramJSONObject.getJSONArray("businesses");
      JSONArray localJSONArray2 = paramJSONObject.getJSONArray("users");
      paramJSONObject = Event.buildEventsFromJSONResponse(paramJSONObject.getJSONArray("events"), localJSONArray2, localJSONArray1);
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */