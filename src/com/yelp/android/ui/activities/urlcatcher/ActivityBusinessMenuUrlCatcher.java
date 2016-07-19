package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;
import java.util.EnumSet;

public class ActivityBusinessMenuUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/menu/").a(new String[] { "menu" }).a();
      Uri localUri = getIntent().getData();
      if (localUri != null)
      {
        paramBundle = localUri;
        if ("yelp-app-indexing".equals(localUri.getScheme())) {
          paramBundle = Uri.parse(localUri.toString().replace("yelp-app-indexing:/", "http://www.yelp.com"));
        }
        startActivity(WebViewActivity.getWebIntent(this, paramBundle, null, ViewIri.BusinessMenu, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.NONE));
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
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityBusinessMenuUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */