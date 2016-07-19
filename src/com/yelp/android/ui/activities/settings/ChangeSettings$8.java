package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v7.widget.Toolbar;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.cm.c;

class ChangeSettings$8
  implements DialogInterface.OnClickListener
{
  ChangeSettings$8(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      a.getAppData().q().a(a);
      a.c();
      ChangeSettings.a(a, true);
      ((Toolbar)a.findViewById(2131690378)).setNavigationIcon(new c(a, 0));
      return;
    }
    AppData.a(EventIri.UserLogoutCancel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */