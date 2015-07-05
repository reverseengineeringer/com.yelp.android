package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation;

class f
  implements DialogInterface.OnClickListener
{
  f(ChangeSettings paramChangeSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    RemoteConfigPreferences.NotificationLocation localNotificationLocation = ChangeSettings.e()[paramInt];
    RemoteConfigPreferences localRemoteConfigPreferences = new RemoteConfigPreferences();
    localRemoteConfigPreferences.a(localNotificationLocation);
    a.a(localRemoteConfigPreferences);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */