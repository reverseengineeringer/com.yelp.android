package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class dr
  extends h<Void, Void, ArrayList<YelpBusiness>>
{
  public dr(j<ArrayList<YelpBusiness>> paramj)
  {
    super(ApiRequest.RequestType.GET, "nearby/suggest", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
  }
  
  public ArrayList<YelpBusiness> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("businesses"), YelpBusiness.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */