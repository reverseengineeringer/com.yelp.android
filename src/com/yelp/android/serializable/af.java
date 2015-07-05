package com.yelp.android.serializable;

import java.util.Comparator;

final class af
  implements Comparator<DealPurchase>
{
  public int a(DealPurchase paramDealPurchase1, DealPurchase paramDealPurchase2)
  {
    if (mTimeExpire < mTimeExpire) {
      return -1;
    }
    if (mTimeExpire > mTimeExpire) {
      return 1;
    }
    return paramDealPurchase1.getId().compareTo(paramDealPurchase2.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */