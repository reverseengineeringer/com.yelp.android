package com.yelp.android.ui.activities.deals;

import android.util.Pair;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.s;

class az
  implements s
{
  protected final PurchaseDealsForm a;
  
  public az(PurchaseDealsForm paramPurchaseDealsForm)
  {
    a = paramPurchaseDealsForm;
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
  {
    paramQuantityDropDownView = PurchaseDealsForm.o(a);
    if (PurchaseDealsForm.p(a).a(((Integer)first).intValue() + ((Integer)second).intValue(), ((Integer)second).intValue()))
    {
      PurchaseDealsForm.q(a).setOnClickListener(new ba(this));
      return;
    }
    PurchaseDealsForm.q(a).setOnClickListener(new bb(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */