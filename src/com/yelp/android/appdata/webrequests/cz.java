package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.NearbyRow;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cz
  extends k<Void, Void, List<NearbyRow>>
{
  public cz(k.b<List<NearbyRow>> paramb)
  {
    super(ApiRequest.RequestType.GET, "nearby/suggest", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public List<NearbyRow> a(JSONObject paramJSONObject)
    throws YelpException
  {
    try
    {
      paramJSONObject = NearbyRow.a(paramJSONObject, i_());
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */