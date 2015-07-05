package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.RoyaltySet;
import java.util.ArrayList;
import org.json.JSONObject;

public class ed
  extends h<Void, Void, ArrayList<RoyaltySet>>
{
  public ed(j<ArrayList<RoyaltySet>> paramj)
  {
    super(ApiRequest.RequestType.GET, "rankings/location", LocationService.Accuracies.COARSE, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    setLatitudeKey("latitude");
    setLongitudeKey("longitude");
  }
  
  public ArrayList<RoyaltySet> a(JSONObject paramJSONObject)
  {
    return RoyaltySet.royaltyFromJSONArray(paramJSONObject.getJSONArray("location_rankings"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */