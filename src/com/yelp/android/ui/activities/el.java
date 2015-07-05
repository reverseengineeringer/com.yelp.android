package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.yelp.android.ui.activities.settings.ChangeSettings;

class el
  implements DialogInterface.OnClickListener
{
  el(CheckInDialog paramCheckInDialog) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.startActivity(new Intent(a.getActivity(), ChangeSettings.class));
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */