package com.yelp.android.util;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInButtonType;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInType;
import com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn;
import com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class CheckInUrlListener
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    Uri localUri = getIntent().getData();
    CheckInPushNotificationHandler.CheckInType localCheckInType = CheckInPushNotificationHandler.CheckInType.getCheckinTypeFromUri(localUri);
    CheckInPushNotificationHandler.CheckInButtonType localCheckInButtonType = (CheckInPushNotificationHandler.CheckInButtonType)paramBundle.getSerializableExtra("extra_check_in_notification_button");
    boolean bool1;
    boolean bool2;
    if ((localCheckInButtonType != null) && (localCheckInButtonType.equals(CheckInPushNotificationHandler.CheckInButtonType.COMMENT)))
    {
      bool1 = true;
      bool2 = paramBundle.getBooleanExtra("extra_check_in_aggregated", true);
      switch (1.a[localCheckInType.ordinal()])
      {
      default: 
        paramBundle = null;
      }
    }
    for (;;)
    {
      if (paramBundle != null) {
        startActivity(paramBundle);
      }
      finish();
      return;
      bool1 = false;
      break;
      if (bool2)
      {
        paramBundle = new Intent(this, NearbyCheckIns.class);
      }
      else
      {
        paramBundle = CommentOnCheckIn.a(this, null, bool1, localUri);
        continue;
        paramBundle = CommentOnCheckIn.a(this, null, bool1, localUri);
        continue;
        paramBundle = new Intent(this, NearbyCheckIns.class);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.CheckInUrlListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */