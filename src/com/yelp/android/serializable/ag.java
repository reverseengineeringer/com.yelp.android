package com.yelp.android.serializable;

import java.util.Comparator;

final class ag
  implements Comparator<DealPurchase>
{
  public int a(DealPurchase paramDealPurchase1, DealPurchase paramDealPurchase2)
  {
    if (mTimeRedeemed > mTimeRedeemed) {
      return -1;
    }
    if (mTimeRedeemed < mTimeRedeemed) {
      return 1;
    }
    return paramDealPurchase1.getId().compareTo(paramDealPurchase2.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */