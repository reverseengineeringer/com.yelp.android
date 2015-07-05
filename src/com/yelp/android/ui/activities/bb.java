package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.util.Holiday;

class bb
  implements DialogInterface.OnClickListener
{
  bb(ActivityConfig paramActivityConfig) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = Holiday.values();
    if (paramInt >= paramDialogInterface.length)
    {
      Holiday.mForcedHoliday = null;
      return;
    }
    Holiday.mForcedHoliday = paramDialogInterface[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */