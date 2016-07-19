package com.yelp.android.ui.activities.addphoto;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class AddBusinessPhoto$4$2
  implements DialogInterface.OnClickListener
{
  AddBusinessPhoto$4$2(AddBusinessPhoto.4 param4) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AddBusinessPhoto.g(a.a))
    {
      a.a.showLoadingDialog(null, AddBusinessPhoto.a(a.a), 2131166073);
      return;
    }
    if (a.a.getIntent().getBooleanExtra("extra.is_video", false))
    {
      AddBusinessPhoto.c(a.a);
      return;
    }
    AddBusinessPhoto.e(a.a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto.4.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */