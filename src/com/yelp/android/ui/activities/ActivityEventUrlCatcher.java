package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.ui.activities.events.ActivityEventPage;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class ActivityEventUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new Intent(this, ActivityEventPage.class);
    paramBundle.setData(getIntent().getData());
    startActivity(paramBundle);
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityEventUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */