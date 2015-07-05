package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences;

class i
  extends ak
{
  i(ChangeSettings paramChangeSettings, SharedPreferences paramSharedPreferences)
  {
    super(paramSharedPreferences);
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    super.a(paramPreferenceView);
    String str = ChangeSettings.a(ChangeSettings.a(a), a);
    if ((str != null) && (str != "")) {
      paramPreferenceView.setSubtitle(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */