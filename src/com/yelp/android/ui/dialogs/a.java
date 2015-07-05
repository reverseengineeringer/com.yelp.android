package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class a
  implements DialogInterface.OnClickListener
{
  a(AlertDialogFragment paramAlertDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AlertDialogFragment.a(a) != null) {
      AlertDialogFragment.a(a).onClick(paramDialogInterface, paramInt);
    }
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */