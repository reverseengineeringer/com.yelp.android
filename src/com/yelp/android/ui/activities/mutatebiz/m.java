package com.yelp.android.ui.activities.mutatebiz;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class m
  implements DialogInterface.OnDismissListener
{
  m(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = a.a(a.n);
    a.startActivity(paramDialogInterface);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */