package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.TrendingSearches;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class et
  extends k<Void, Void, TrendingSearches>
{
  public et(k.b<TrendingSearches> paramb)
  {
    super(ApiRequest.RequestType.GET, "suggest/trending", LocationService.Accuracies.COARSE, LocationService.Recentness.HOUR, paramb, LocationService.AccuracyUnit.MILES);
    a("relevant_experiments", "android_trending_searches");
  }
  
  public TrendingSearches a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (TrendingSearches)TrendingSearches.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */