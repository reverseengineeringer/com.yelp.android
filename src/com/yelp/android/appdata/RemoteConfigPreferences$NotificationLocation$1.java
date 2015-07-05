package com.yelp.android.appdata;

import com.yelp.android.services.push.t;
import java.util.Set;

 enum RemoteConfigPreferences$NotificationLocation$1
{
  RemoteConfigPreferences$NotificationLocation$1(int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, null);
  }
  
  public Set<? extends t> getAntiTokens()
  {
    return RemoteConfigPreferences.NotificationSchedule.NO_ALERTS.getAntiTokens();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */