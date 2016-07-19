package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityConfirmAccount;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityConfirmAccountUrlCatcher
  extends YelpUrlCatcherActivity
{
  private void b()
  {
    YelpLog.remoteError("ActivityConfirmAccountUrlCatcher", String.format("Missing confirmation hash. Uri: %s", new Object[] { getIntent().getData() }));
    startActivity(ActivityNearby.b(this));
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/ce").a("c").a();
        Uri localUri = getIntent().getData();
        paramBundle = null;
        if (localUri != null)
        {
          AppData.a(new n(localUri));
          paramBundle = a("c", localUri);
        }
        if (paramBundle != null)
        {
          startActivity(ActivityConfirmAccount.a(this, paramBundle, false).setFlags(67108864));
          finish();
          return;
        }
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        b();
        finish();
        return;
      }
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityConfirmAccountUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */