package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;

class ActivityOnboardingLocationPermission$1
  implements View.OnClickListener
{
  ActivityOnboardingLocationPermission$1(ActivityOnboardingLocationPermission paramActivityOnboardingLocationPermission) {}
  
  public void onClick(View paramView)
  {
    if (k.a(a, PermissionGroup.LOCATION))
    {
      a.setResult(-1);
      a.finish();
      return;
    }
    k.a(a, 250, new PermissionGroup[] { PermissionGroup.LOCATION });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityOnboardingLocationPermission.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */