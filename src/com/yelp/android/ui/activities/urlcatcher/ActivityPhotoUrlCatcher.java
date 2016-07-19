package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.mediagrid.ActivityBusinessMediaGrid;
import com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityPhotoUrlCatcher
  extends YelpUrlCatcherActivity
{
  public static String a(Uri paramUri)
  {
    if (paramUri == null) {
      return "";
    }
    return paramUri.getLastPathSegment();
  }
  
  public static String b(Uri paramUri)
  {
    if (paramUri == null) {
      return "";
    }
    return paramUri.getQueryParameter("select");
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      String str;
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "yelp", "/biz/photo").a("android.intent.action.VIEW", "yelp", "/biz_photos/").a("android.intent.action.VIEW", "http", "/biz_photos/").a(new String[] { "biz_photos" }).a();
        Uri localUri = getIntent().getData();
        str = b(localUri);
        paramBundle = a(localUri);
        if (!TextUtils.isEmpty(paramBundle))
        {
          if (TextUtils.isEmpty(str)) {
            break label169;
          }
          if ("yelp".equals(localUri.getScheme()))
          {
            paramBundle = ActivityBusinessMediaViewer.a(this, paramBundle, str);
            paramBundle.putExtra("photo_id", str);
            paramBundle.putExtra("yelp:external_request", true);
            AppData.b().k().a(new n(localUri));
            startActivity(paramBundle);
          }
        }
        else
        {
          finish();
          return;
        }
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        finish();
        return;
      }
      paramBundle = ActivityBusinessMediaViewer.c(this, paramBundle, str);
      continue;
      label169:
      paramBundle = ActivityBusinessMediaGrid.a(this, paramBundle, new BusinessMediaRequest(paramBundle, 20), 2131166350);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityPhotoUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */