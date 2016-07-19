package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class cv
  extends k<Void, Void, ArrayList<YelpBusiness>>
{
  public cv(k.b<ArrayList<YelpBusiness>> paramb)
  {
    super(ApiRequest.RequestType.GET, "nearby/suggest", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public ArrayList<YelpBusiness> a(JSONObject paramJSONObject)
    throws JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("businesses"), YelpBusiness.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */