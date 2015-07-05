package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class bg
  implements DialogInterface.OnClickListener
{
  bg(SingleChoiceListDialogFragment paramSingleChoiceListDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SingleChoiceListDialogFragment.a(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */