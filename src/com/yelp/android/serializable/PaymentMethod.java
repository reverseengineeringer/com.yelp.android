package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class PaymentMethod
  extends _PaymentMethod
{
  public static final JsonParser.DualCreator<PaymentMethod> CREATOR = new PaymentMethod.1();
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PaymentMethod)) {}
    do
    {
      return false;
      paramObject = (PaymentMethod)paramObject;
    } while ((!a.equals(a)) || (!b.equals(b)) || (!c.equals(c)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PaymentMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */