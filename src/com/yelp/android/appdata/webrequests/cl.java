package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.BusinessLocalAd;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cl
  extends b<Void, Void, List<BusinessLocalAd>>
{
  public cl(String paramString1, String paramString2, ApiRequest.b<List<LocalAd>> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/local_ads", paramb);
    a("biz_id", paramString1);
    if (paramString2 != null) {
      a("biz_request_id", paramString2);
    }
  }
  
  public List<BusinessLocalAd> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("local_ads"), BusinessLocalAd.CREATOR);
    BusinessLocalAd.a(localArrayList, JsonUtil.parseJsonList(paramJSONObject.getJSONArray("ad_businesses"), YelpBusiness.CREATOR));
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */