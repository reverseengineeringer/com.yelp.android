package com.yelp.android.appdata.webrequests;

import com.adjust.sdk.e;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class ak
  extends h<String, Void, YelpCheckIn>
{
  private YelpCheckIn a;
  
  public ak(String paramString1, String paramString2, j<YelpCheckIn> paramj)
  {
    super(ApiRequest.RequestType.POST, "check_in", LocationService.Accuracies.MEDIUM, LocationService.Recentness.MINUTE, paramj, LocationService.AccuracyUnit.MILES);
    addPostParam("business_id", paramString1);
    if (paramString2 != null) {
      addPostParam("comment", paramString2);
    }
  }
  
  public YelpCheckIn a(JSONObject paramJSONObject)
  {
    return YelpCheckIn.checkInFromJSONResponse(paramJSONObject, this);
  }
  
  protected void a(YelpCheckIn paramYelpCheckIn)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("request_id", getRequestId());
    localHashMap.put("id", paramYelpCheckIn.getBusinessId());
    e.a("lyi71l");
    AppData.a(EventIri.CheckedIn, localHashMap);
    a = paramYelpCheckIn;
    super.onSuccess(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */