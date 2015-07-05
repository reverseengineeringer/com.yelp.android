package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class cr
  extends h<Void, Void, Map<String, String>>
{
  public cr(j<Map<String, String>> paramj)
  {
    super(ApiRequest.RequestType.GET, "client/big_kahuna", LocationService.Accuracies.MEDIUM, LocationService.Recentness.HOUR, paramj, LocationService.AccuracyUnit.MILES);
  }
  
  public Map<String, String> a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getJSONObject("kahuna_attributes");
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramJSONObject.getString(str));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */