package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class bk
  extends h<Void, Void, List<YelpBusinessReview>>
{
  public bk(String paramString, int paramInt1, int paramInt2, j<List<YelpBusinessReview>> paramj)
  {
    super(ApiRequest.RequestType.GET, "deal/reviews", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
    addUrlParam("deal_id", paramString);
  }
  
  public List<YelpBusinessReview> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */