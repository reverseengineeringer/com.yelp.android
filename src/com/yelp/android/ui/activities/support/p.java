package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class p
  implements DialogInterface.OnClickListener
{
  private final Activity b;
  private final int c;
  
  public p(h paramh, Activity paramActivity, int paramInt)
  {
    b = paramActivity;
    c = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      ((n)b).onYesNoDialogSelection(true, c);
      return;
    }
    ((n)b).onYesNoDialogSelection(false, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */