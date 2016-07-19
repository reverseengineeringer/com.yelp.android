package com.yelp.android.ui.activities.deals;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.ui.activities.account.CreditCardSelector;

class PurchaseDealsForm$11
  implements DialogInterface.OnClickListener
{
  PurchaseDealsForm$11(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a = null;
    paramDialogInterface = CreditCardSelector.a(a);
    a.startActivityForResult(paramDialogInterface, 1040);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */