package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Ranking;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class ae
  extends b<Void, Void, ArrayList<Ranking>>
{
  public ae(String paramString, int paramInt1, int paramInt2, ApiRequest.b<ArrayList<Ranking>> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/regulars", paramb);
    a("business_id", paramString);
    a("limit", paramInt2);
    a("offset", paramInt1);
  }
  
  public ArrayList<Ranking> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("rankings"), Ranking.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */