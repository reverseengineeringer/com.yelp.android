package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;

class ActivityCreateAccount$12
  implements View.OnClickListener
{
  ActivityCreateAccount$12(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onClick(View paramView)
  {
    if (k.b(AppData.b(), PermissionGroup.CONTACTS))
    {
      k.a(a, 250, new PermissionGroup[] { PermissionGroup.CONTACTS });
      return;
    }
    ActivityCreateAccount.a(a, paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */