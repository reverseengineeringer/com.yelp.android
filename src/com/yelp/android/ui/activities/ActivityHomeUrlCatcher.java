package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class ActivityHomeUrlCatcher
  extends YelpUrlCatcherActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AppData.b().k().a(new o(getIntent().getData()));
    startActivity(ActivityNearby.b(this));
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityHomeUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */