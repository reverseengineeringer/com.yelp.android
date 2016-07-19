package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class cx
  extends k<Void, Void, ArrayList<YelpCheckIn>>
{
  ArrayList<YelpCheckIn> g;
  
  public cx(k.b<ArrayList<YelpCheckIn>> paramb)
  {
    super(ApiRequest.RequestType.GET, "check_ins/friends/nearby", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("mode", 1);
    a("offset", 0);
  }
  
  public ArrayList<YelpCheckIn> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    HashMap localHashMap = YelpBusiness.b(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.FULL);
    g = YelpCheckIn.a(paramJSONObject.getJSONArray("check_ins"), localHashMap);
    return g;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */