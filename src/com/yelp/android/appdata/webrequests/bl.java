package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.serializable.PaymentMethod;

public class bl
  extends h
{
  public bl(PaymentMethod paramPaymentMethod)
  {
    super("account/payment_method/remove", null);
    addPostParam("payment_method_id", paramPaymentMethod.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */