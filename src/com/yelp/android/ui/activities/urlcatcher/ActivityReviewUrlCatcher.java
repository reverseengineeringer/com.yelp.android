package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.notifications.ActivityNotifications;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityReviewUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      String str;
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "yelp", "/reviews").a();
        Uri localUri = getIntent().getData();
        if (localUri != null)
        {
          paramBundle = localUri.getQueryParameter("biz_id");
          str = localUri.getQueryParameter("review_id");
          if ((TextUtils.isEmpty(paramBundle)) || (TextUtils.isEmpty(str)))
          {
            paramBundle = ActivityNotifications.a(this);
            startActivity(paramBundle);
            AppData.a(new n(localUri));
          }
        }
        else
        {
          finish();
          return;
        }
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        finish();
        return;
      }
      paramBundle = ActivityReviewPager.a(this, str, paramBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityReviewUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */