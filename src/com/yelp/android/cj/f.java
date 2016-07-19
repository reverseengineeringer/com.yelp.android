package com.yelp.android.cj;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.settings.PreferenceView;

public class f
  implements i
{
  public void a(PreferenceView paramPreferenceView)
  {
    if ((!AppData.b().q().b()) && (!e.k.a())) {
      paramPreferenceView.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cj.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */