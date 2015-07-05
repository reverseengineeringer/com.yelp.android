package com.yelp.android.ui.dialogs;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class o
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener
{
  private final Activity a;
  
  public o(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  void a(int paramInt)
  {
    if (paramInt < 0) {}
    for (int i = 0;; i = -1)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.putExtra("extra.choices", paramInt);
      a.setResult(i, localIntent);
      a.finish();
      return;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a(-1);
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */