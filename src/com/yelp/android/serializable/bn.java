package com.yelp.android.serializable;

import java.util.Comparator;
import java.util.Date;

final class bn
  implements Comparator<Offer>
{
  public int a(Offer paramOffer1, Offer paramOffer2)
  {
    int j = paramOffer1.getRedemption().getDateRedeemed().compareTo(paramOffer2.getRedemption().getDateRedeemed());
    int i = j;
    if (j == 0) {
      i = paramOffer1.getId().compareTo(paramOffer2.getId());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */