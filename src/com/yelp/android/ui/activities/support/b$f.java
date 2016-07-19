package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class b$f
  implements DialogInterface.OnClickListener
{
  private final Activity b;
  private final int c;
  
  public b$f(b paramb, Activity paramActivity, int paramInt)
  {
    b = paramActivity;
    c = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      ((b.d)b).onYesNoDialogSelection(true, c);
      return;
    }
    ((b.d)b).onYesNoDialogSelection(false, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */