package com.yelp.android.ui.activities.mutatebiz;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;

class l
  implements DialogInterface.OnClickListener
{
  l(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppData.a(a.c());
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */