package com.yelp.android.ui.activities.deals;

import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;

public class ad
{
  private YelpDeal a;
  private YelpDealOption b;
  
  public ad(YelpDeal paramYelpDeal, YelpDealOption paramYelpDealOption)
  {
    a = paramYelpDeal;
    b = paramYelpDealOption;
  }
  
  public int a()
  {
    return Math.min(a.getMaxUserQuantity(), a.getMaxQuantity());
  }
  
  public int a(int paramInt)
  {
    if (paramInt <= 0) {}
    for (paramInt = a(); b.getAvailableCount() < 0; paramInt = a.getMaxGiftQuantity()) {
      return paramInt;
    }
    return Math.min(paramInt, b.getAvailableCount());
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return (b(paramInt2 + 1)) && (d(paramInt1 + 1));
  }
  
  public boolean b(int paramInt)
  {
    return paramInt <= a.getMaxGiftQuantity();
  }
  
  public boolean c(int paramInt)
  {
    return paramInt <= a.getMaxUserQuantity();
  }
  
  public boolean d(int paramInt)
  {
    return paramInt <= a.getMaxQuantity();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */