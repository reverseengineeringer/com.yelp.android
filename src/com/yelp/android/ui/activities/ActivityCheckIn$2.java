package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class ActivityCheckIn$2
  implements DialogInterface.OnDismissListener
{
  ActivityCheckIn$2(ActivityCheckIn paramActivityCheckIn) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = ActivityCheckIn.a(a).b();
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.comment_text", paramDialogInterface);
    if (ActivityCheckIn.b(a) == null) {
      a.setResult(0, localIntent);
    }
    for (;;)
    {
      a.finish();
      return;
      paramDialogInterface = new Intent();
      BusinessContributionType.CHECK_IN.writeToIntent(paramDialogInterface, ActivityCheckIn.b(a));
      a.setResult(-1, paramDialogInterface);
      if (a.getIntent().getBooleanExtra("extra.should_forward_to_business", false))
      {
        paramDialogInterface = ActivityBusinessPage.b(a, ActivityCheckIn.c(a));
        BusinessContributionType.CHECK_IN.writeToIntent(paramDialogInterface, ActivityCheckIn.b(a));
        a.startActivity(paramDialogInterface);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCheckIn.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */