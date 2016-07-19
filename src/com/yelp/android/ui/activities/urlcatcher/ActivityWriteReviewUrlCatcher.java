package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;
import java.util.List;
import org.apache.commons.lang3.b;

public class ActivityWriteReviewUrlCatcher
  extends YelpUrlCatcherActivity
{
  private final String a = "ActivityWriteReviewUrlCatcher";
  
  private int a(Uri paramUri)
  {
    paramUri = paramUri.getQueryParameter("rating");
    if (!b.b(paramUri))
    {
      YelpLog.remoteError("ActivityWriteReviewUrlCatcher", "The rating value was not a number. Value: " + paramUri);
      return 0;
    }
    int i = Integer.parseInt(paramUri);
    if ((i >= 0) && (i <= 5)) {
      return i;
    }
    YelpLog.remoteError("ActivityWriteReviewUrlCatcher", "The rating value was smaller than 0 or bigger than 5. Value: " + i);
    return 0;
  }
  
  private ReviewSource b(Uri paramUri)
  {
    String str = paramUri.getQueryParameter("se");
    paramUri = paramUri.getQueryParameter("utm_medium");
    if ((paramUri != null) && (paramUri.equals("email")) && (str != null)) {
      return ReviewSource.getReviewSource(str);
    }
    return ReviewSource.FromWebsite;
  }
  
  protected boolean a()
  {
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/writeareview/biz/").a("android.intent.action.VIEW", "https", "/writeareview/biz/").a();
      paramBundle = getIntent().getData();
      Object localObject = paramBundle.getPathSegments();
      localObject = (String)((List)localObject).get(((List)localObject).indexOf("biz") + 1);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localObject = ActivityBusinessPage.a(this, (String)localObject, a(paramBundle), paramBundle, b(paramBundle));
        AppData.b().k().a(new n(paramBundle));
        startActivity((Intent)localObject);
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
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityWriteReviewUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */