package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ChangeSettings$7
  implements DialogInterface.OnCancelListener
{
  ChangeSettings$7(ChangeSettings paramChangeSettings) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    AppData.a(EventIri.UserLogoutCancel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */