package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.account.CreditCardSelector;

class PurchaseDealsForm$5
  implements View.OnClickListener
{
  PurchaseDealsForm$5(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void onClick(View paramView)
  {
    paramView = CreditCardSelector.a(paramView.getContext(), PurchaseDealsForm.m(a));
    a.startActivityForResult(paramView, 1040);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */