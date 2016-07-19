package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityUserProfileUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/user_details").a();
      AppData.b().k().a(new n(getIntent().getData()));
      paramBundle = null;
      Uri localUri = getIntent().getData();
      if (localUri != null) {
        paramBundle = a("userid", localUri);
      }
      if ((paramBundle != null) && (!paramBundle.isEmpty())) {
        startActivity(ActivityUserProfile.a(this, paramBundle));
      }
      finish();
      return;
    }
    catch (SecurityException paramBundle)
    {
      YelpLog.remoteError(paramBundle);
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityUserProfileUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */