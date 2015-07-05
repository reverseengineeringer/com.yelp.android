package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

public class ef
  extends g<Void, Void, List<YelpCheckIn>>
{
  private final String a;
  
  public ef(m<List<YelpCheckIn>> paramm, String paramString, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "check_ins/regular", paramm);
    addUrlParam("offset", paramInt);
    a = paramString;
    if (paramString != null) {
      addUrlParam("user_id", paramString);
    }
  }
  
  public List<YelpCheckIn> a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = YelpBusiness.jsonBusinessesToMap(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.FULL);
    return YelpCheckIn.checkInsFromJSONArray(paramJSONObject.getJSONArray("check_ins"), localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */