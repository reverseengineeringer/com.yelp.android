package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class u
  implements View.OnClickListener
{
  u(ActivityConfig paramActivityConfig) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.setClass(a, ActivityDebugInfo.class);
    paramView.setFlags(536870912);
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */