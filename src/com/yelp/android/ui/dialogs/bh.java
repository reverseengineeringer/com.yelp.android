package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class bh
  implements DialogInterface.OnClickListener
{
  bh(SingleChoiceListDialogFragment paramSingleChoiceListDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */