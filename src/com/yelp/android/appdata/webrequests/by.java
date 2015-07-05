package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Event;
import org.json.JSONObject;

public class by
  extends h<Void, Void, bz>
{
  public by(String paramString, int paramInt1, int paramInt2, j paramj)
  {
    super(ApiRequest.RequestType.GET, "/events/section", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addUrlParam("alias", paramString);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public bz a(JSONObject paramJSONObject)
  {
    return new bz(Event.buildEventsFromJSONResponse(paramJSONObject.getJSONArray("events"), paramJSONObject.getJSONArray("users"), paramJSONObject.getJSONArray("businesses")), paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */