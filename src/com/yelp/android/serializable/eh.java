package com.yelp.android.serializable;

import java.util.Comparator;

final class eh
  implements Comparator<YelpDeal>
{
  public int a(YelpDeal paramYelpDeal1, YelpDeal paramYelpDeal2)
  {
    paramYelpDeal1 = paramYelpDeal1.getFirstUsablePurchase();
    paramYelpDeal2 = paramYelpDeal2.getFirstUsablePurchase();
    return DealPurchase.COMPARATOR_TIME_EXPIRED.compare(paramYelpDeal1, paramYelpDeal2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */