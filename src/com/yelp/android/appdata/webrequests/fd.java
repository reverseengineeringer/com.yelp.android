package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class fd
  extends b<Void, Void, ArrayList<YelpDeal>>
{
  public fd(ApiRequest.b<ArrayList<YelpDeal>> paramb, String paramString)
  {
    super(ApiRequest.RequestType.GET, "/user/deals", paramb);
    if (paramString != null) {
      a("business_ids", paramString);
    }
  }
  
  public ArrayList<YelpDeal> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("deals"), YelpDeal.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */