package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import java.util.ArrayList;
import java.util.List;

public class ActivityPhotoUrlCatcher
  extends YelpUrlCatcherActivity
{
  public static String a(Uri paramUri)
  {
    if (paramUri == null) {
      return "";
    }
    if (TextUtils.equals((CharSequence)paramUri.getPathSegments().get(0), "biz")) {
      return paramUri.getQueryParameter("biz_id");
    }
    return paramUri.getLastPathSegment();
  }
  
  public static String b(Uri paramUri)
  {
    if (paramUri == null) {
      return "";
    }
    if (TextUtils.equals((CharSequence)paramUri.getPathSegments().get(0), "biz")) {
      return paramUri.getQueryParameter("photo_id");
    }
    return paramUri.getQueryParameter("select");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri = getIntent().getData();
    paramBundle = b(localUri);
    String str = a(localUri);
    if (!TextUtils.isEmpty(str))
    {
      if (TextUtils.isEmpty(str)) {
        break label121;
      }
      if (!"yelp".equals(localUri.getScheme())) {
        break label104;
      }
      paramBundle = ActivityMediaViewer.a(this, str, BusinessMediaRequest.singlePhoto(str, paramBundle), new ArrayList(0), 0);
    }
    for (;;)
    {
      paramBundle.putExtra("yelp:external_request", true);
      AppData.b().k().a(new o(localUri));
      startActivity(paramBundle);
      finish();
      return;
      label104:
      paramBundle = ActivityMediaViewer.a(this, str, new ArrayList(), paramBundle);
      continue;
      label121:
      paramBundle = ActivityMediaBrowser.a(this, getString(2131166331), null, new BusinessMediaRequest(str, 0, 20), new ArrayList(), false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityPhotoUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */