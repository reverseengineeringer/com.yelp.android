package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.RoyaltySet;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class dg
  extends k<Void, Void, ArrayList<RoyaltySet>>
{
  public dg(k.b<ArrayList<RoyaltySet>> paramb)
  {
    super(ApiRequest.RequestType.GET, "rankings/location", LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("latitude");
    b("longitude");
  }
  
  public ArrayList<RoyaltySet> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return RoyaltySet.a(paramJSONObject.getJSONArray("location_rankings"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */