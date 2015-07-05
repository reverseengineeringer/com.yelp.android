package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.dialogs.FlagsDialog;

class by
  implements View.OnClickListener
{
  by(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onClick(View paramView)
  {
    if (ActivityCreateAccount.e(a) == null)
    {
      ActivityCreateAccount.a(a, FlagsDialog.a(ActivityCreateAccount.f(a)));
      ActivityCreateAccount.e(a).a(ActivityCreateAccount.g(a));
    }
    ActivityCreateAccount.e(a).show(a.getSupportFragmentManager(), "flags_dialog");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */