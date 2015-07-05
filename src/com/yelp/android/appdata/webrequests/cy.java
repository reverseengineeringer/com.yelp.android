package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.BusinessLocalAd;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class cy
  extends g<Void, Void, List<BusinessLocalAd>>
{
  public cy(String paramString1, String paramString2, m<List<LocalAd>> paramm)
  {
    super(ApiRequest.RequestType.GET, "business/local_ads", paramm);
    addUrlParam("biz_id", paramString1);
    if (paramString2 != null) {
      addUrlParam("biz_request_id", paramString2);
    }
  }
  
  public List<BusinessLocalAd> a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("local_ads"), BusinessLocalAd.CREATOR);
    BusinessLocalAd.initializeBusinessLocalAds(localArrayList, JsonUtil.parseJsonList(paramJSONObject.getJSONArray("ad_businesses"), YelpBusiness.CREATOR));
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */