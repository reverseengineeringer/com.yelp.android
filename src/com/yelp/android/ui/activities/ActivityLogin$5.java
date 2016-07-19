package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.LinearLayout;

class ActivityLogin$5
  implements View.OnFocusChangeListener
{
  ActivityLogin$5(ActivityLogin paramActivityLogin) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      ActivityLogin.b(a).setEnabled(false);
      ActivityLogin.b(a).setFocusable(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */