package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ax.a;
import com.yelp.android.database.d;
import com.yelp.android.database.j;
import com.yelp.android.database.q;
import com.yelp.android.database.savedsearch.c;

class l
  implements DialogInterface.OnClickListener
{
  l(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.getAppData().i();
    paramDialogInterface.g().b();
    paramDialogInterface.e().c();
    paramDialogInterface.c().c();
    paramDialogInterface.f().c();
    paramDialogInterface.b().b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */