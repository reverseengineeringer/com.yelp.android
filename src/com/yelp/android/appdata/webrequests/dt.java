package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class dt
  extends h<Void, Void, ArrayList<YelpCheckIn>>
{
  ArrayList<YelpCheckIn> a;
  
  public dt(j<ArrayList<YelpCheckIn>> paramj)
  {
    super(ApiRequest.RequestType.GET, "check_ins/friends/nearby", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addUrlParam("mode", 1);
    addUrlParam("offset", 0);
  }
  
  public ArrayList<YelpCheckIn> a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = YelpBusiness.jsonBusinessesToMap(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.FULL);
    a = YelpCheckIn.checkInsFromJSONArray(paramJSONObject.getJSONArray("check_ins"), localHashMap);
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */