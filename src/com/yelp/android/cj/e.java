package com.yelp.android.cj;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.settings.PreferenceView;
import java.util.Locale;

public class e
  implements i
{
  public void a(PreferenceView paramPreferenceView)
  {
    if (!LocaleSettings.f(Locale.getDefault().getCountry())) {
      paramPreferenceView.setVisibility(8);
    }
    paramPreferenceView.setChecked(AppData.b().q().p().q());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cj.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */