package com.crashlytics.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(av paramav) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.a(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */