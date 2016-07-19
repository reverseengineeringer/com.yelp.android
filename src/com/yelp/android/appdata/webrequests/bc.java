package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.PaymentMethod;

public class bc
  extends c
{
  public bc(PaymentMethod paramPaymentMethod)
  {
    super("account/payment_method/remove", null);
    b("payment_method_id", paramPaymentMethod.d());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */