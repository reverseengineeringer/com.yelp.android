package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.support.v7.widget.Toolbar;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;

class d
  implements DialogInterface.OnClickListener
{
  d(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1)
    {
      a.getAppData().m().a(a);
      a.a();
      ChangeSettings.a(a, true);
      ((Toolbar)a.findViewById(2131493634)).setNavigationIcon(a.getResources().getDrawable(2130838194));
      return;
    }
    AppData.a(EventIri.UserLogoutCancel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */