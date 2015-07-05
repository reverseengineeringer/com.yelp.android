package com.yelp.android.ui.activities.deals;

import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.OfferRedemption;
import com.yelp.android.serializable.YelpDeal;
import java.util.Comparator;
import java.util.Date;

final class u
  implements Comparator<Object>
{
  private boolean b(Object paramObject)
  {
    return ((paramObject instanceof YelpDeal)) || ((paramObject instanceof Offer));
  }
  
  private long c(Object paramObject)
  {
    if ((paramObject instanceof YelpDeal)) {
      return ((YelpDeal)paramObject).getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED).getRedeemedTimeMillis();
    }
    return ((Offer)paramObject).getRedemption().getDateRedeemed().getTime();
  }
  
  private String d(Object paramObject)
  {
    if ((paramObject instanceof YelpDeal)) {
      return ((YelpDeal)paramObject).getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED).getRedemptionTitle();
    }
    return ((Offer)paramObject).getPromoText();
  }
  
  String a(Object paramObject)
  {
    if ((paramObject instanceof YelpDeal)) {
      return ((YelpDeal)paramObject).getFirstPurchaseByStatus(DealPurchase.PurchaseStatus.REDEEMED).getId();
    }
    return ((Offer)paramObject).getId();
  }
  
  public int compare(Object paramObject1, Object paramObject2)
  {
    if ((!b(paramObject1)) || (!b(paramObject2))) {
      throw new IllegalArgumentException("Only YelpDeals and Offers can be compared here");
    }
    long l2 = c(paramObject2) - c(paramObject1);
    long l1 = l2;
    if (l2 == 0L) {
      l1 = d(paramObject2).compareToIgnoreCase(d(paramObject1));
    }
    l2 = l1;
    if (l1 == 0L) {
      l2 = a(paramObject2).compareTo(a(paramObject1));
    }
    return (int)l2;
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject.getClass().equals(getClass());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */