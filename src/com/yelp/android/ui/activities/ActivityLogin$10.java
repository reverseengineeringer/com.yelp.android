package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityLogin$10
  implements CompoundButton.OnCheckedChangeListener
{
  ActivityLogin$10(ActivityLogin paramActivityLogin) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ActivityLogin.a(a, paramBoolean);
    if (ActivityLogin.h(a)) {}
    for (paramCompoundButton = EventIri.LogInUnmaskPasswordCheckboxClicked;; paramCompoundButton = EventIri.LogInMaskPasswordCheckboxClicked)
    {
      AppData.a(paramCompoundButton);
      ActivityLogin.i(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */