package com.yelp.android.ui.activities.reservations;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ActivityReservationFlow$2$1
  implements DialogInterface.OnClickListener
{
  ActivityReservationFlow$2$1(ActivityReservationFlow.2 param2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ActivityReservationFlow.d(a.a) == null)
    {
      a.a.finish();
      return;
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ActivityReservationFlow.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */