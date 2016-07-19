package com.yelp.android.ui.activities.elite;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class ActivityEliteWelcomeSplash$2
  implements View.OnClickListener
{
  ActivityEliteWelcomeSplash$2(ActivityEliteWelcomeSplash paramActivityEliteWelcomeSplash) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityUserProfile.a(a));
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.elite.ActivityEliteWelcomeSplash.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */