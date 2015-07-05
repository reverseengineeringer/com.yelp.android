package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.yelp.android.appdata.BusinessContributionType;

class s
  implements DialogInterface.OnDismissListener
{
  s(ActivityCheckIn paramActivityCheckIn) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (ActivityCheckIn.a(a) == null) {
      a.setResult(0);
    }
    for (;;)
    {
      a.finish();
      return;
      paramDialogInterface = new Intent();
      BusinessContributionType.CHECK_IN.writeToIntent(paramDialogInterface, ActivityCheckIn.a(a));
      a.setResult(-1, paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */