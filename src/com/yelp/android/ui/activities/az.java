package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class az
  implements DialogInterface.OnClickListener
{
  az(ActivityConfig paramActivityConfig) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.intent.action.VIEW");
    paramDialogInterface.setData(Uri.parse(com.yelp.android.debug.Debug.c[paramInt]));
    a.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */