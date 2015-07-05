package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.av.g;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONObject;

public class bh
  extends g<Void, Void, YelpBusiness>
{
  public bh(int paramInt, String paramString, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal, YelpDealOption paramYelpDealOption, ArrayList<Pair<GiftRecipient, Integer>> paramArrayList, PaymentMethod paramPaymentMethod, m<YelpBusiness> paramm)
  {
    super(ApiRequest.RequestType.POST, "/deal/purchase", paramm);
    addPostParam("deal_option_id", paramYelpDealOption.getId());
    addPostParam("quantity", paramInt);
    addPostParam("purchase_nonce", paramString);
    if (paramYelpBusiness != null) {
      addPostParam("business_id", paramYelpBusiness.getId());
    }
    paramString = paramYelpDeal.getTimeUpdated();
    if (paramString != null) {
      addPostParam("deal_time_updated", paramString.getTime() / 1000L);
    }
    paramString = paramPaymentMethod.getId();
    if (!TextUtils.isEmpty(paramString)) {
      addPostParam("payment_method_id", paramString);
    }
    int i = paramArrayList.size();
    paramInt = 0;
    while (paramInt < i)
    {
      paramString = (Pair)paramArrayList.get(paramInt);
      addPostParam(String.format("gift_recipient_%s_name", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).getName());
      addPostParam(String.format("gift_recipient_%s_from", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).getFrom());
      if (!TextUtils.isEmpty(((GiftRecipient)first).getEmail())) {
        addPostParam(String.format("gift_recipient_%s_email", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).getEmail());
      }
      if (!TextUtils.isEmpty(((GiftRecipient)first).getMessage())) {
        addPostParam(String.format("gift_recipient_%s_message", new Object[] { Integer.valueOf(paramInt + 1) }), ((GiftRecipient)first).getMessage());
      }
      addPostParam(String.format("gift_recipient_%s_quantity", new Object[] { Integer.valueOf(paramInt + 1) }), ((Integer)second).intValue());
      paramInt += 1;
    }
  }
  
  public YelpBusiness a(JSONObject paramJSONObject)
  {
    return (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */