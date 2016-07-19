package com.yelp.android.cj;

import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.settings.PreferenceRadioView;
import com.yelp.android.ui.activities.settings.PreferenceToggleView;
import com.yelp.android.ui.activities.settings.PreferenceView;

public class a
  implements i
{
  public void a(PreferenceView paramPreferenceView)
  {
    ApiPreferences localApiPreferences = AppData.b().o();
    String str = paramPreferenceView.getKey();
    if ((paramPreferenceView instanceof PreferenceToggleView)) {
      paramPreferenceView.setChecked(localApiPreferences.a(str));
    }
    while (!(paramPreferenceView instanceof PreferenceRadioView))
    {
      paramPreferenceView.getViewBuilder().a(paramPreferenceView, false);
      return;
    }
    PreferenceRadioView localPreferenceRadioView = (PreferenceRadioView)paramPreferenceView;
    if (localApiPreferences.b(str).intValue() == localPreferenceRadioView.getValue()) {}
    for (boolean bool = true;; bool = false)
    {
      paramPreferenceView.setChecked(bool);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */