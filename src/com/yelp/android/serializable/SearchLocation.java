package com.yelp.android.serializable;

import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class SearchLocation
  extends _SearchLocation
{
  public static final JsonParser.DualCreator<SearchLocation> CREATOR = new SearchLocation.1();
  
  private SearchLocation() {}
  
  public SearchLocation(String paramString)
  {
    super(paramString, SearchLocation.Type.TEXT, 0.0D, 0.0D, 0.0D, 0.0D);
  }
  
  public SearchLocation(double[] paramArrayOfDouble)
  {
    super(null, SearchLocation.Type.REGION, paramArrayOfDouble[0], paramArrayOfDouble[1], paramArrayOfDouble[2], paramArrayOfDouble[3]);
  }
  
  public static SearchLocation a(SearchRequest paramSearchRequest)
  {
    if (paramSearchRequest == null) {
      return null;
    }
    double[] arrayOfDouble = paramSearchRequest.I();
    if (arrayOfDouble != null) {
      return new SearchLocation(arrayOfDouble);
    }
    return new SearchLocation(paramSearchRequest.F());
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("text", a);
    }
    if (b == SearchLocation.Type.REGION)
    {
      localJSONObject.put("tl_lat", c);
      localJSONObject.put("tl_long", d);
      localJSONObject.put("br_lat", e);
      localJSONObject.put("br_long", f);
    }
    return localJSONObject;
  }
  
  public void a(eo parameo)
  {
    if (b == SearchLocation.Type.REGION)
    {
      parameo.a(new double[] { c, d, e, f, 0.0D, 0.0D });
      return;
    }
    parameo.a(a);
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (b == SearchLocation.Type.COORDINATE) {
      b = SearchLocation.Type.TEXT;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SearchLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */