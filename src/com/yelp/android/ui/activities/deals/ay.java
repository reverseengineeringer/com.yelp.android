package com.yelp.android.ui.activities.deals;

import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.s;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

class ay
  extends az
  implements s
{
  public ay(PurchaseDealsForm paramPurchaseDealsForm)
  {
    super(paramPurchaseDealsForm);
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
  {
    super.a(paramInt, paramQuantityDropDownView);
    paramQuantityDropDownView = PurchaseDealsForm.a(a);
    Iterator localIterator = PurchaseDealsForm.r(a).values().iterator();
    for (paramInt = 0; localIterator.hasNext(); paramInt = ((be)localIterator.next()).getQuantity() + paramInt) {}
    paramQuantityDropDownView.setQuantity(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */