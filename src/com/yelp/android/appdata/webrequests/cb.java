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
import org.json.JSONException;
import org.json.JSONObject;

public class cb
  extends k<Void, Void, a>
{
  ArrayList<CheckIn> g;
  ArrayList<CheckIn> h;
  ArrayList<CheckIn> i;
  ArrayList<String> j;
  int k = -1;
  int l = -1;
  int m = 0;
  
  public cb(k.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "check_ins/friends", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE_15, paramb, LocationService.AccuracyUnit.MILES);
  }
  
  public int A()
  {
    return g.size() + h.size() + i.size();
  }
  
  public ArrayList<String> B()
  {
    return j;
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    HashMap localHashMap = YelpBusiness.b(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.FULL);
    g = ExternalCheckIn.a(paramJSONObject.getJSONArray("nearby_check_ins"), localHashMap);
    h = ExternalCheckIn.a(paramJSONObject.getJSONArray("city_check_ins"), localHashMap);
    i = ExternalCheckIn.a(paramJSONObject.getJSONArray("other_check_ins"), localHashMap);
    k = paramJSONObject.optInt("weekly_check_in_rank", -1);
    l = paramJSONObject.optInt("friend_check_in_rank", -1);
    m = paramJSONObject.optInt("friend_active_count", 0);
    j = new ArrayList();
    if (!paramJSONObject.isNull("location_names")) {
      Collections.addAll(j, JsonUtil.getStringArray(paramJSONObject.getJSONArray("location_names")));
    }
    return new a(g, h, i);
  }
  
  public boolean b()
  {
    return false;
  }
  
  public int x()
  {
    return k;
  }
  
  public int y()
  {
    return l;
  }
  
  public int z()
  {
    return m;
  }
  
  public static class a
  {
    final ArrayList<CheckIn> a;
    final ArrayList<CheckIn> b;
    final ArrayList<CheckIn> c;
    
    public a(ArrayList<CheckIn> paramArrayList1, ArrayList<CheckIn> paramArrayList2, ArrayList<CheckIn> paramArrayList3)
    {
      a = paramArrayList1;
      b = paramArrayList2;
      c = paramArrayList3;
    }
    
    public ArrayList<CheckIn> a()
    {
      return a;
    }
    
    public ArrayList<CheckIn> b()
    {
      return b;
    }
    
    public ArrayList<CheckIn> c()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */