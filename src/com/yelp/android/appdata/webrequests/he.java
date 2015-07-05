package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.WeeklyIssueResponse;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class he
  extends h<Void, Void, WeeklyIssueResponse>
{
  public he(j<WeeklyIssueResponse> paramj)
  {
    super(ApiRequest.RequestType.GET, "weekly/nearby", LocationService.Accuracies.COARSE, LocationService.Recentness.HOUR, paramj, LocationService.AccuracyUnit.MILES);
  }
  
  public WeeklyIssueResponse a(JSONObject paramJSONObject)
  {
    return (WeeklyIssueResponse)WeeklyIssueResponse.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.he
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */