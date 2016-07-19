package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class ay
  extends b<Void, Void, YelpBusiness>
{
  public ay(int paramInt, String paramString, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal, YelpDealOption paramYelpDealOption, ArrayList<Pair<GiftRecipient, Integer>> paramArrayList, PaymentMethod paramPaymentMethod, ApiRequest.b<YelpBusiness> paramb)
  {
    super(ApiRequest.RequestType.POST, "/deal/purchase", paramb);
    b("deal_option_id", paramYelpDealOption.e());
    b("quantity", paramInt);
    b("purchase_nonce", paramString);
    if (paramYelpBusiness != null) {
      b("business_id", paramYelpBusiness.aD());
    }
    paramString = paramYelpDeal.B();
    if (paramString != null) {
      b("deal_time_updated", paramString.getTime() / 1000L);
    }
    paramString = paramPaymentMethod.d();
    if (!TextUtils.isEmpty(paramString)) {
      b("payment_method_id", paramString);
    }
    int i = paramArrayList.size();
    paramInt = 0;
    while (paramInt < i)
    {
      paramString = (Pair)paramArrayList.get(paramInt);
      b(String.format("gift_recipient_%s_name", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).e());
      b(String.format("gift_recipient_%s_from", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).d());
      if (!TextUtils.isEmpty(((GiftRecipient)first).c())) {
        b(String.format("gift_recipient_%s_email", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).c());
      }
      if (!TextUtils.isEmpty(((GiftRecipient)first).b())) {
        b(String.format("gift_recipient_%s_message", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).b());
      }
      b(String.format("gift_recipient_%s_quantity", new Object[] { Integer.valueOf(paramInt + 1) }), ((Integer)second).intValue());
      paramInt += 1;
    }
  }
  
  public YelpBusiness a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */