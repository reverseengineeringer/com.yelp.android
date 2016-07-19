package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.ActivityCompliments;
import com.yelp.android.ui.activities.compliments.Mode;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityComplimentsUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/user_details_thanx").a("userid").a();
      paramBundle = getIntent().getData();
      if (paramBundle != null)
      {
        startActivity(ActivityLogin.a(this, 2131166110, ActivityCompliments.a(this, Mode.APPROVE, null)));
        AppData.a(new n(paramBundle));
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
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityComplimentsUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */