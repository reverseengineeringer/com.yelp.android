package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class dc
  extends b<Void, Void, ArrayList<PaymentMethod>>
{
  public dc(ApiRequest.b<ArrayList<PaymentMethod>> paramb)
  {
    super(ApiRequest.RequestType.GET, "account/payment_methods", paramb);
  }
  
  public ArrayList<PaymentMethod> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.optJSONArray("payment_methods"), PaymentMethod.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */