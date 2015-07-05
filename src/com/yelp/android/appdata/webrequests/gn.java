package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class gn
  extends g<Void, Void, ArrayList<YelpDeal>>
{
  public gn(m<ArrayList<YelpDeal>> paramm, String paramString)
  {
    super(ApiRequest.RequestType.GET, "/user/deals", paramm);
    if (paramString != null) {
      addUrlParam("business_ids", paramString);
    }
  }
  
  public ArrayList<YelpDeal> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("deals"), YelpDeal.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */