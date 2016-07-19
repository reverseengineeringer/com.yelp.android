package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.ui.activities.events.ActivityEventPage;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityEventUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/events/").a("android.intent.action.VIEW", "yelp", "/events/").a("android.intent.action.VIEW", "http", "/elite/event/").a(new String[] { "events" }).a();
      paramBundle = new Intent(this, ActivityEventPage.class);
      paramBundle.setData(getIntent().getData());
      startActivity(paramBundle);
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
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityEventUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */