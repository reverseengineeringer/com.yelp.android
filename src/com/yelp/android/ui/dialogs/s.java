package com.yelp.android.ui.dialogs;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class s
  implements DialogInterface.OnClickListener
{
  private int a;
  private Activity b;
  
  public s(Activity paramActivity, int paramInt)
  {
    a = paramInt;
    b = paramActivity;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.setResult(a, null);
    b.finish();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */