package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class bb
  extends k<Void, Void, List<YelpBusinessReview>>
{
  public bb(String paramString, k.b<List<YelpBusinessReview>> paramb)
  {
    super(ApiRequest.RequestType.GET, "deal/reviews", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
    a("deal_id", paramString);
  }
  
  public List<YelpBusinessReview> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */