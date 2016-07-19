package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.localissue.ActivityLocalIssue;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;
import java.util.List;

public class ActivityLocalIssueUrlCatcher
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
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "yelp", "/weekly_yelp").a("android.intent.action.VIEW", "http", "/weekly_yelp").a();
        Uri localUri = getIntent().getData();
        if (localUri == null) {
          break label169;
        }
        paramBundle = localUri.getPathSegments();
        if ((paramBundle.size() >= 3) && (((String)paramBundle.get(1)).equals("market")))
        {
          paramBundle = ActivityLocalIssue.a(this, (String)paramBundle.get(2));
          AppData.a(new n(localUri));
          startActivity(paramBundle);
          finish();
          return;
        }
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        startActivity(ActivityLocalIssue.a(this));
        finish();
        return;
      }
      if (paramBundle.size() >= 2)
      {
        paramBundle = ActivityLocalIssue.b(this, (String)paramBundle.get(1));
      }
      else
      {
        paramBundle = ActivityLocalIssue.a(this);
        continue;
        label169:
        paramBundle = ActivityLocalIssue.a(this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityLocalIssueUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */