package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bs
  extends JsonParser.DualCreator<PaymentMethod>
{
  public PaymentMethod a(Parcel paramParcel)
  {
    PaymentMethod localPaymentMethod = new PaymentMethod();
    localPaymentMethod.readFromParcel(paramParcel);
    return localPaymentMethod;
  }
  
  public PaymentMethod a(JSONObject paramJSONObject)
  {
    PaymentMethod localPaymentMethod = new PaymentMethod();
    localPaymentMethod.readFromJson(paramJSONObject);
    return localPaymentMethod;
  }
  
  public PaymentMethod[] a(int paramInt)
  {
    return new PaymentMethod[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */