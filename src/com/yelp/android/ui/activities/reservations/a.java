package com.yelp.android.ui.activities.reservations;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class a
  implements DialogInterface.OnClickListener
{
  a(ChooseReservation paramChooseReservation) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (ChooseReservation.a(a)) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */