package com.yelp.android.ui.dialogs;

import com.yelp.android.serializable.Offer;

class m
  implements Runnable
{
  m(l paraml, Offer paramOffer) {}
  
  public void run()
  {
    CheckInOfferDialog.a(b.a, a);
    CheckInOfferDialog localCheckInOfferDialog = b.a;
    if (!CheckInOfferDialog.e(b.a).isRedeemed()) {}
    for (boolean bool = true;; bool = false)
    {
      CheckInOfferDialog.a(localCheckInOfferDialog, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */