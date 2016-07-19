package com.yelp.android.ui.activities.deals;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.view.View;
import android.view.View.OnClickListener;

class PurchaseDealsForm$13
  implements View.OnClickListener
{
  PurchaseDealsForm$13(PurchaseDealsForm paramPurchaseDealsForm, PendingIntent paramPendingIntent) {}
  
  public void onClick(View paramView)
  {
    try
    {
      a.send(-1);
      return;
    }
    catch (PendingIntent.CanceledException paramView) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */