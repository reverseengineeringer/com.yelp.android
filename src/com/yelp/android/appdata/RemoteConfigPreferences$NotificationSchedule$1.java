package com.yelp.android.appdata;

import com.yelp.android.services.push.t;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

 enum RemoteConfigPreferences$NotificationSchedule$1
{
  RemoteConfigPreferences$NotificationSchedule$1(int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, null);
  }
  
  public Set<? extends t> getAntiTokens()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(EnumSet.allOf(RemoteConfigPreferences.NotificationSchedule.class));
    localHashSet.addAll(EnumSet.allOf(RemoteConfigPreferences.NotificationLocation.class));
    return localHashSet;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */