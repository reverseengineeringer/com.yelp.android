package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class ee
  extends k<Void, Void, ArrayList<ReviewSuggestion>>
{
  public ee(k.b<ArrayList<ReviewSuggestion>> paramb)
  {
    super(ApiRequest.RequestType.GET, "/reviews/suggestions", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public ArrayList<ReviewSuggestion> a(JSONObject paramJSONObject)
    throws JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("review_suggestions"), ReviewSuggestion.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */