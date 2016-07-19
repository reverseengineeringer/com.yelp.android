package com.yelp.android.appdata.webrequests;

import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ak
  extends k<String, Void, YelpCheckIn>
{
  private YelpCheckIn g;
  
  public ak(String paramString1, String paramString2, k.b<YelpCheckIn> paramb)
  {
    super(ApiRequest.RequestType.POST, "check_in", LocationService.Accuracies.UNKNOWN, LocationService.Recentness.MINUTE, paramb, LocationService.AccuracyUnit.MILES);
    b("business_id", paramString1);
    if (paramString2 != null) {
      b("comment", paramString2);
    }
  }
  
  public YelpCheckIn a(JSONObject paramJSONObject)
    throws JSONException
  {
    return YelpCheckIn.a(paramJSONObject, this);
  }
  
  protected void a(YelpCheckIn paramYelpCheckIn)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("request_id", i_());
    localHashMap.put("id", paramYelpCheckIn.k());
    AppData.b().l().a(AdjustManager.YelpAdjustEvent.CHECKED_IN);
    AppData.a(EventIri.CheckedIn, localHashMap);
    g = paramYelpCheckIn;
    super.b(g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */