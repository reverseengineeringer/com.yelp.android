package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

public class cp
  extends g<Void, Void, cq>
{
  public cp(YelpDeal paramYelpDeal, m<cq> paramm)
  {
    super(ApiRequest.RequestType.POST, "deal/prepare_purchase", paramm);
    addPostParam("deal_id", paramYelpDeal.getId());
    paramYelpDeal = paramYelpDeal.getTimeUpdated();
    if (paramYelpDeal != null) {
      addPostParam("deal_time_updated", paramYelpDeal.getTime() / 1000L);
    }
  }
  
  public cq a(JSONObject paramJSONObject)
  {
    return new cq(paramJSONObject.getString("purchase_nonce"), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("payment_methods"), PaymentMethod.CREATOR));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */