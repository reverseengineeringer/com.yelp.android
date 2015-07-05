package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import java.util.EnumSet;

public class ActivityBusinessMenuUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      startActivity(WebViewActivity.getWebIntent(this, paramBundle, null, ViewIri.BusinessMenu, EnumSet.of(WebViewActivity.Feature.EVENTS)));
      AppData.a(new o(paramBundle));
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBusinessMenuUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */