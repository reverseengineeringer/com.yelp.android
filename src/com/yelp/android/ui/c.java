package com.yelp.android.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class c
  implements DialogInterface.OnCancelListener
{
  c(ActivityMonocle paramActivityMonocle) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ActivityMonocle.a(a).c();
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */