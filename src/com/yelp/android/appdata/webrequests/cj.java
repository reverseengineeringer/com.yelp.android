package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.CheckIn;
import com.yelp.android.serializable.ExternalCheckIn;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;

public class cj
  extends h<Void, Void, ck>
{
  ArrayList<CheckIn> a;
  ArrayList<CheckIn> b;
  ArrayList<CheckIn> c;
  ArrayList<String> d;
  int e = -1;
  int f = -1;
  int g = 0;
  
  public cj(j<ck> paramj)
  {
    super(ApiRequest.RequestType.GET, "check_ins/friends", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramj, LocationService.AccuracyUnit.MILES);
  }
  
  public int a()
  {
    return e;
  }
  
  public ck a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = YelpBusiness.jsonBusinessesToMap(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.FULL);
    a = ExternalCheckIn.mixedCheckInsFromJSONArray(paramJSONObject.getJSONArray("nearby_check_ins"), localHashMap);
    b = ExternalCheckIn.mixedCheckInsFromJSONArray(paramJSONObject.getJSONArray("city_check_ins"), localHashMap);
    c = ExternalCheckIn.mixedCheckInsFromJSONArray(paramJSONObject.getJSONArray("other_check_ins"), localHashMap);
    e = paramJSONObject.optInt("weekly_check_in_rank", -1);
    f = paramJSONObject.optInt("friend_check_in_rank", -1);
    g = paramJSONObject.optInt("friend_active_count", 0);
    d = new ArrayList();
    if (!paramJSONObject.isNull("location_names")) {
      Collections.addAll(d, JsonUtil.getStringArray(paramJSONObject.getJSONArray("location_names")));
    }
    return new ck(a, b, c);
  }
  
  public int b()
  {
    return f;
  }
  
  public int c()
  {
    return g;
  }
  
  public int d()
  {
    return a.size() + b.size() + c.size();
  }
  
  public ArrayList<String> e()
  {
    return d;
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */