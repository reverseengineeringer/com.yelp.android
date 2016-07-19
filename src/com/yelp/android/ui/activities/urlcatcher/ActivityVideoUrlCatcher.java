package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityVideoUrlCatcher
  extends YelpUrlCatcherActivity
{
  public static String a(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return paramUri.getQueryParameter("biz_id");
  }
  
  public static String b(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return paramUri.getQueryParameter("video_id");
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "yelp", "/biz_videos").a("biz_id").a("video_id").a();
      Object localObject = getIntent().getData();
      String str = a((Uri)localObject);
      paramBundle = b((Uri)localObject);
      AppData.b().k().a(new n((Uri)localObject));
      localObject = ActivityBusinessMediaViewer.b(this, str, paramBundle);
      ((Intent)localObject).putExtra("video_id", paramBundle);
      ((Intent)localObject).putExtra("yelp:external_request", true);
      startActivity((Intent)localObject);
      finish();
      return;
    }
    catch (SecurityException paramBundle)
    {
      YelpLog.remoteError(paramBundle);
      startActivity(ActivityNearby.b(this));
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityVideoUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */