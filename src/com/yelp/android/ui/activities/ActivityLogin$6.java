package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;

class ActivityLogin$6
  implements DialogInterface.OnClickListener
{
  ActivityLogin$6(ActivityLogin paramActivityLogin) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().o().a(REPORT_BACKGROUND_LOCATIONapiKey, true);
    AppData.a(EventIri.BackgroundLocationAttachToAccountDialogYes);
    ActivityLogin.c(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */