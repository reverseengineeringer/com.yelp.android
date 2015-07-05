package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;

class g
  implements View.OnClickListener
{
  g(CheckInOfferDialog paramCheckInOfferDialog) {}
  
  public void onClick(View paramView)
  {
    if (CheckInOfferDialog.c(a) == null) {
      CheckInOfferDialog.a(a, TwoButtonDialog.a(2131166895, 2131165488, 17039369, 2131165702));
    }
    CheckInOfferDialog.c(a).a(CheckInOfferDialog.d(a));
    CheckInOfferDialog.c(a).setCancelable(true);
    CheckInOfferDialog.c(a).show(a.getChildFragmentManager(), "dialog_discard_offer");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */