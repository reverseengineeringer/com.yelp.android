package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ep<T>
  extends b<String, Void, List<T>>
{
  public static Location a = new Location("no_location");
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected final double k;
  protected final double l;
  protected Location m;
  protected String n;
  
  static
  {
    a.setLatitude(NaN.0D);
    a.setLongitude(NaN.0D);
  }
  
  protected ep(ApiRequest.RequestType paramRequestType, String paramString1, ApiRequest.b<List<T>> paramb, Location paramLocation, String paramString2)
  {
    super(paramRequestType, paramString1, paramb);
    if (paramLocation != null) {}
    for (double d1 = paramLocation.getLatitude();; d1 = NaN.0D)
    {
      k = d1;
      d1 = d2;
      if (paramLocation != null) {
        d1 = paramLocation.getLongitude();
      }
      l = d1;
      m = paramLocation;
      n = paramString2;
      c("latitude", k);
      c("longitude", l);
      return;
    }
  }
  
  public List<T> a(JSONObject paramJSONObject)
    throws JSONException
  {
    JSONArray localJSONArray = paramJSONObject.optJSONArray("suggestions");
    i = paramJSONObject.optString("analytics_payload");
    g = paramJSONObject.getJSONObject("message").optString("request_id");
    h = paramJSONObject.optString("term");
    return JsonUtil.getStringList(localJSONArray);
  }
  
  public String b()
  {
    return j;
  }
  
  public String d()
  {
    return i;
  }
  
  public double f()
  {
    return k;
  }
  
  public String i_()
  {
    return g;
  }
  
  public double x()
  {
    return l;
  }
  
  public Location y()
  {
    return m;
  }
  
  public String z()
  {
    return n;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */