package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class ea
  extends g<Void, Void, ArrayList<PaymentMethod>>
{
  public ea(boolean paramBoolean, m<ArrayList<PaymentMethod>> paramm)
  {
    super(ApiRequest.RequestType.GET, "account/payment_methods", paramm);
  }
  
  public ArrayList<PaymentMethod> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.optJSONArray("payment_methods"), PaymentMethod.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */