package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import java.util.ArrayList;

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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    String str1 = a(paramBundle);
    String str2 = b(paramBundle);
    if ((str1 == null) || (str2 == null))
    {
      startActivity(ActivityNearby.b(this));
      finish();
      return;
    }
    AppData.b().k().a(new o(paramBundle));
    paramBundle = ActivityMediaViewer.a(this, str1, BusinessMediaRequest.singleVideo(str1, str2), new ArrayList(0), 0);
    paramBundle.putExtra("yelp:external_request", true);
    startActivity(paramBundle);
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityVideoUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */