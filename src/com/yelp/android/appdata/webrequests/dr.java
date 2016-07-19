package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Location;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class dr
  extends k<Void, Void, a>
{
  public dr(double paramDouble1, double paramDouble2, k.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "geocode/reverse", LocationService.Accuracies.FINE, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.METERS);
    a("latitude", paramDouble1);
    a("longitude", paramDouble2);
  }
  
  public dr(k.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "geocode/reverse", LocationService.Accuracies.FINE, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.METERS);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    Location localLocation = null;
    if (!paramJSONObject.isNull("location")) {
      localLocation = (Location)Location.CREATOR.parse(paramJSONObject.getJSONObject("location"));
    }
    return new a(localLocation, paramJSONObject.getBoolean("yelp_available"));
  }
  
  public static final class a
  {
    public final Location a;
    public final boolean b;
    
    public a(Location paramLocation, boolean paramBoolean)
    {
      a = paramLocation;
      b = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */