package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ca.a;
import com.yelp.android.database.b;
import com.yelp.android.database.c;
import com.yelp.android.database.d;
import com.yelp.android.database.g;

class ChangeSettings$3
  implements DialogInterface.OnClickListener
{
  ChangeSettings$3(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.getAppData().i();
    paramDialogInterface.e().b();
    paramDialogInterface.c().c();
    paramDialogInterface.b().c();
    paramDialogInterface.d().c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */