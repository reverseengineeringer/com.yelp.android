package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class cf
  extends b<Void, Void, a>
{
  public cf(YelpDeal paramYelpDeal, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.POST, "deal/prepare_purchase", paramb);
    b("deal_id", paramYelpDeal.x());
    paramYelpDeal = paramYelpDeal.B();
    if (paramYelpDeal != null) {
      b("deal_time_updated", paramYelpDeal.getTime() / 1000L);
    }
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(paramJSONObject.getString("purchase_nonce"), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("payment_methods"), PaymentMethod.CREATOR));
  }
  
  public static class a
  {
    final String a;
    final ArrayList<PaymentMethod> b;
    
    public a(String paramString, ArrayList<PaymentMethod> paramArrayList)
    {
      a = paramString;
      b = paramArrayList;
    }
    
    public String a()
    {
      return a;
    }
    
    public ArrayList<PaymentMethod> b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */