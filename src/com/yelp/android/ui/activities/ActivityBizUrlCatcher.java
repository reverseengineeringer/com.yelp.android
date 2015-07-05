package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class ActivityBizUrlCatcher
  extends YelpUrlCatcherActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    Intent localIntent = h.a(this, paramBundle, getIntent().getExtras());
    if (localIntent != null)
    {
      AppData.b().k().a(new o(paramBundle));
      startActivity(localIntent);
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBizUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */