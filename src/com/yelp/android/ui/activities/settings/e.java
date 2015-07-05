package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;

class e
  implements DialogInterface.OnClickListener
{
  e(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RemoteConfigPreferences.NotificationSchedule localNotificationSchedule = ChangeSettings.d()[paramInt];
    RemoteConfigPreferences localRemoteConfigPreferences = new RemoteConfigPreferences();
    localRemoteConfigPreferences.a(localNotificationSchedule);
    a.a(localRemoteConfigPreferences);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */