package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cy
  extends k<Void, Void, List<RichSearchSuggestion>>
{
  public cy(k.b<List<RichSearchSuggestion>> paramb)
  {
    super(ApiRequest.RequestType.GET, "suggest/nearby_search", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public List<RichSearchSuggestion> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.optJSONArray("suggestions"), RichSearchSuggestion.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */