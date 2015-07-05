package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class cj
  implements View.OnClickListener
{
  cj(ActivityLogin paramActivityLogin) {}
  
  public void onClick(View paramView)
  {
    boolean bool = a.getIntent().getBooleanExtra("signup_from_review", false);
    paramView = new Intent();
    paramView.setClass(a, ActivityCreateAccount.class);
    paramView.addFlags(536870912);
    paramView.putExtra("show_skip_button", false);
    paramView.putExtra("signup_from_review", bool);
    a.startActivityForResult(paramView, 100);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */