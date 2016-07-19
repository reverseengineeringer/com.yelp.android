package com.yelp.android.ui.activities.deals;

import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.QuantityDropDownView.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

class PurchaseDealsForm$a
  extends PurchaseDealsForm.b
  implements QuantityDropDownView.a
{
  public PurchaseDealsForm$a(PurchaseDealsForm paramPurchaseDealsForm)
  {
    super(paramPurchaseDealsForm);
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
  {
    super.a(paramInt, paramQuantityDropDownView);
    paramQuantityDropDownView = PurchaseDealsForm.a(a);
    Iterator localIterator = PurchaseDealsForm.r(a).values().iterator();
    for (paramInt = 0; localIterator.hasNext(); paramInt = ((d)localIterator.next()).getQuantity() + paramInt) {}
    paramQuantityDropDownView.setQuantity(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */