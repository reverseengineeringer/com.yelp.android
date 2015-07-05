package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class dh$1
  implements DialogInterface.OnClickListener
{
  dh$1(dh paramdh) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = rj.createIntent();
    dh.a(rj).startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */