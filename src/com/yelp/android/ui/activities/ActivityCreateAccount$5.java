package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityCreateAccount$5
  implements View.OnFocusChangeListener
{
  ActivityCreateAccount$5(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!ActivityCreateAccount.m(a))
      {
        ActivityCreateAccount.c(a, true);
        AppData.a(EventIri.SignUpFormInputFocused, "name", "email");
        ActivityCreateAccount.l(a);
      }
      AppData.a(EventIri.SignUpDropdownShown);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */