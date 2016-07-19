package com.yelp.android.ui.activities;

import android.location.Location;
import com.yelp.android.appdata.LocationService.a;

class ActivityCreateAccount$20
  implements LocationService.a
{
  ActivityCreateAccount$20(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(Location paramLocation, boolean paramBoolean)
  {
    ActivityCreateAccount.a(a, new ActivityCreateAccount.b(a, paramLocation));
    ActivityCreateAccount.B(a).execute(new Void[0]);
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */