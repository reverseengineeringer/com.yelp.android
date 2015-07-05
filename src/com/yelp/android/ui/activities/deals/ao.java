package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.account.CreditCardSelector;

class ao
  implements View.OnClickListener
{
  ao(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void onClick(View paramView)
  {
    a.startActivityForResult(CreditCardSelector.a(a), 1036);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */