package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityTalkTopicFetcher;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;
import java.util.List;

public class ActivityTalkUrlCatcher
  extends YelpUrlCatcherActivity
{
  private Uri a;
  
  private void a(String paramString1, String paramString2)
  {
    if (TextUtils.equals("talk", paramString1)) {
      startActivity(new Intent(this, ActivityTalk.class));
    }
    while (!TextUtils.equals("topic", paramString1)) {
      return;
    }
    startActivity(ActivityTalkTopicFetcher.a(this, paramString2));
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/topic/").a("android.intent.action.VIEW", "http", "/talk").a(new String[] { "topic", "talk" }).a();
        a = getIntent().getData();
        if (a != null)
        {
          if ("yelp-app-indexing".equals(a.getScheme()))
          {
            a(a.getHost(), a.getLastPathSegment());
            AppData.a(new n(a));
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
      a((String)a.getPathSegments().get(0), a.getLastPathSegment());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityTalkUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */