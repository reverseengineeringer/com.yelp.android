package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.dc;

public class ak
  implements ao
{
  private final SharedPreferences a;
  
  public ak(SharedPreferences paramSharedPreferences)
  {
    a = paramSharedPreferences;
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    paramPreferenceView.setVisibility(0);
    if ((paramPreferenceView instanceof PreferenceToggleView)) {
      paramPreferenceView.setChecked(a.getBoolean(paramPreferenceView.getKey(), paramPreferenceView.isChecked()));
    }
    boolean bool = AppData.b().m().c();
    if (((paramPreferenceView.b()) && (!bool)) || ((paramPreferenceView.c()) && (bool))) {
      paramPreferenceView.setVisibility(8);
    }
    if ((paramPreferenceView.getContext().getString(2131165974).equals(paramPreferenceView.getKey())) && (!Features.messaging.isEnabled())) {
      paramPreferenceView.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */