package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.dialogs.FlagsDialog;

class ActivityCreateAccount$28
  implements View.OnClickListener
{
  ActivityCreateAccount$28(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onClick(View paramView)
  {
    if (ActivityCreateAccount.d(a) == null)
    {
      ActivityCreateAccount.a(a, FlagsDialog.a(ActivityCreateAccount.e(a)));
      ActivityCreateAccount.d(a).a(ActivityCreateAccount.f(a));
    }
    ActivityCreateAccount.d(a).show(a.getSupportFragmentManager(), "flags_dialog");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */