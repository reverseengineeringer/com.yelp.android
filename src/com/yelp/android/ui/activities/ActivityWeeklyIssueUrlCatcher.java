package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.activities.weekly.ActivityWeeklyIssue;
import java.util.List;

public class ActivityWeeklyIssueUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri = getIntent().getData();
    if (localUri != null)
    {
      paramBundle = localUri.getPathSegments();
      if ((paramBundle.size() >= 3) && (((String)paramBundle.get(1)).equals("market")))
      {
        paramBundle = ActivityWeeklyIssue.a(this, (String)paramBundle.get(2));
        AppData.a(new o(localUri));
      }
    }
    for (;;)
    {
      startActivity(paramBundle);
      finish();
      return;
      paramBundle = ActivityWeeklyIssue.a(this);
      break;
      paramBundle = ActivityWeeklyIssue.a(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityWeeklyIssueUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */