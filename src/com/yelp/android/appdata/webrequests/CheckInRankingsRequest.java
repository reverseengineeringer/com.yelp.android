package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.Ranking;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONObject;

public class CheckInRankingsRequest
  extends h<Void, Void, ArrayList<Ranking>>
{
  public final CheckInRankingsRequest.SearchMode a;
  
  private CheckInRankingsRequest(j<ArrayList<Ranking>> paramj, String paramString, CheckInRankingsRequest.SearchMode paramSearchMode)
  {
    super(ApiRequest.RequestType.GET, paramString, LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.HOUR, paramj, LocationService.AccuracyUnit.MILES);
    setLatitudeKey("latitude");
    setLongitudeKey("longitude");
    a = paramSearchMode;
  }
  
  public static CheckInRankingsRequest a(j<ArrayList<Ranking>> paramj, CheckInRankingsRequest.SearchMode paramSearchMode)
  {
    return new CheckInRankingsRequest(paramj, String.format("check_in/rankings/%s", new Object[] { paramSearchMode.name().toLowerCase(Locale.US) }), paramSearchMode);
  }
  
  public ArrayList<Ranking> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("rankings"), Ranking.CREATOR);
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.CheckInRankingsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */