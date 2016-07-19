package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

class ActivityConfirmAccount$5$1
  implements DialogInterface.OnDismissListener
{
  ActivityConfirmAccount$5$1(ActivityConfirmAccount.5 param5) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (ActivityConfirmAccount.b(a.a) != null) {
      a.a.startActivity(ActivityConfirmAccount.b(a.a).setFlags(67174400));
    }
    for (;;)
    {
      a.a.finish();
      return;
      if (a.a.isTaskRoot()) {
        a.a.startActivity(ActivityNearby.b(AppData.b()).setFlags(67174400));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */