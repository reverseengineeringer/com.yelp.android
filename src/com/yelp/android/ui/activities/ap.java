package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.debug.Debug;

class ap
  implements DialogInterface.OnClickListener
{
  ap(ActivityConfig paramActivityConfig) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = true;
    paramDialogInterface = AppData.b().o();
    Context localContext = a.getApplicationContext();
    if (paramInt == 1) {}
    for (;;)
    {
      paramDialogInterface.a(localContext, bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */