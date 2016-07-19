package com.yelp.android.ui.activities.mutatebiz;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;

class ChangeBusinessAttributes$7
  implements DialogInterface.OnClickListener
{
  ChangeBusinessAttributes$7(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppData.a(a.c());
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */