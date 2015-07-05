package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Ranking;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class ab
  extends g<Void, Void, ArrayList<Ranking>>
{
  public ab(String paramString, int paramInt1, int paramInt2, m<ArrayList<Ranking>> paramm)
  {
    super(ApiRequest.RequestType.GET, "business/regulars", paramm);
    addUrlParam("business_id", paramString);
    addUrlParam("limit", paramInt2);
    addUrlParam("offset", paramInt1);
  }
  
  public ArrayList<Ranking> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("rankings"), Ranking.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */