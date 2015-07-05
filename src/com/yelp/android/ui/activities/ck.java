package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.LinearLayout;

class ck
  implements View.OnFocusChangeListener
{
  ck(ActivityLogin paramActivityLogin) {}
  
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
 * Qualified Name:     com.yelp.android.ui.activities.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */