package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.yelp.android.serializable.YelpDeal;

class PurchaseDealsForm$9
  implements DialogInterface.OnClickListener
{
  PurchaseDealsForm$9(PurchaseDealsForm paramPurchaseDealsForm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a = null;
    paramDialogInterface = a;
    Intent localIntent = ActivityDealDetail.a(paramDialogInterface, PurchaseDealsForm.c(a).x());
    localIntent.addFlags(67108864);
    paramDialogInterface.startActivity(localIntent);
    paramDialogInterface.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */