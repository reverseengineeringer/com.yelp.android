package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class di
  extends b<Void, Void, List<YelpCheckIn>>
{
  private final String a;
  
  public di(ApiRequest.b<List<YelpCheckIn>> paramb, String paramString, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "check_ins/regular", paramb);
    a("offset", paramInt);
    a = paramString;
    if (paramString != null) {
      a("user_id", paramString);
    }
  }
  
  public List<YelpCheckIn> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    HashMap localHashMap = YelpBusiness.b(paramJSONObject.getJSONArray("businesses"), i_(), BusinessSearchRequest.FormatMode.FULL);
    return YelpCheckIn.a(paramJSONObject.getJSONArray("check_ins"), localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */