package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.ui.activities.support.o;

class au
  implements DialogInterface.OnClickListener
{
  au(LocationSettingsDialog paramLocationSettingsDialog) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (LocationSettingsDialog.b(a) != null) {
      LocationSettingsDialog.b(a).a(LocationSettingsDialog.c(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */