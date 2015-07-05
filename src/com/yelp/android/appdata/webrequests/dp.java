package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.OfferSummary;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.ah;
import java.util.HashMap;
import org.json.JSONObject;

public class dp
  extends g<Void, Void, dq>
{
  protected dp(ApiRequest.RequestType paramRequestType, String paramString, m<dq> paramm, int paramInt)
  {
    super(paramRequestType, paramString, paramm);
    addUrlParam("offset", paramInt);
    if (paramInt == 0) {
      addUrlParam("summary", 1);
    }
  }
  
  public dp(m<dq> paramm, int paramInt)
  {
    this(ApiRequest.RequestType.GET, "check_ins", paramm, paramInt);
  }
  
  public dq a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = YelpBusiness.jsonBusinessesToMap(paramJSONObject.getJSONArray("businesses"), getRequestId(), BusinessSearchRequest.FormatMode.FULL);
    int i = paramJSONObject.optInt("weekly_check_in_rank", -1);
    int j = paramJSONObject.optInt("friend_check_in_rank", -1);
    int k = paramJSONObject.optInt("friend_active_count", 0);
    OfferSummary localOfferSummary = null;
    if (!paramJSONObject.isNull("check_in_offer_summary")) {
      localOfferSummary = (OfferSummary)OfferSummary.CREATOR.parse(paramJSONObject.getJSONObject("check_in_offer_summary"));
    }
    return new dq(YelpCheckIn.checkInsFromJSONArray(paramJSONObject.getJSONArray("check_ins"), localHashMap), localOfferSummary, i, j, k);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */