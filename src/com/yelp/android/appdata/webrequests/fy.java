package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.av.g;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class fy<T>
  extends g<String, Void, List<T>>
{
  public static Location a = new Location("no_location");
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected final double f;
  protected final double g;
  protected Location h;
  protected String i;
  
  static
  {
    a.setLatitude(NaN.0D);
    a.setLongitude(NaN.0D);
  }
  
  protected fy(ApiRequest.RequestType paramRequestType, String paramString1, m<List<T>> paramm, Location paramLocation, String paramString2)
  {
    super(paramRequestType, paramString1, paramm);
    if (paramLocation != null) {}
    for (double d1 = paramLocation.getLatitude();; d1 = NaN.0D)
    {
      f = d1;
      d1 = d2;
      if (paramLocation != null) {
        d1 = paramLocation.getLongitude();
      }
      g = d1;
      h = paramLocation;
      i = paramString2;
      addObfuscatedUrlParam("latitude", f);
      addObfuscatedUrlParam("longitude", g);
      return;
    }
  }
  
  public String a()
  {
    return e;
  }
  
  public List<T> a(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = paramJSONObject.optJSONArray("suggestions");
    d = paramJSONObject.optString("analytics_payload");
    b = paramJSONObject.getJSONObject("message").optString("request_id");
    c = paramJSONObject.optString("term");
    return JsonUtil.getStringList(localJSONArray);
  }
  
  public String b()
  {
    return d;
  }
  
  public double c()
  {
    return f;
  }
  
  public double d()
  {
    return g;
  }
  
  public Location e()
  {
    return h;
  }
  
  public String f()
  {
    return i;
  }
  
  public String getRequestId()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */