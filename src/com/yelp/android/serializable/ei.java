package com.yelp.android.serializable;

import java.util.Comparator;

final class ei
  implements Comparator<YelpDeal>
{
  public int a(YelpDeal paramYelpDeal1, YelpDeal paramYelpDeal2)
  {
    paramYelpDeal1 = paramYelpDeal1.getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED);
    paramYelpDeal2 = paramYelpDeal2.getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED);
    return DealPurchase.COMPARATOR_TIME_REDEEMED.compare(paramYelpDeal1, paramYelpDeal2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */