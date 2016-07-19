package com.yelp.android.ui.activities.addphoto;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;

class AddBusinessPhoto$4$1
  implements DialogInterface.OnClickListener
{
  AddBusinessPhoto$4$1(AddBusinessPhoto.4 param4) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AddBusinessPhoto.f(a.a).cancel(true);
    a.a.setResult(0);
    a.a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.AddBusinessPhoto.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */