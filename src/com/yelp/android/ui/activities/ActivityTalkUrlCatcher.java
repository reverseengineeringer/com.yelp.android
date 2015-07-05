package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.fz;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import java.util.List;

public class ActivityTalkUrlCatcher
  extends YelpUrlCatcherActivity
{
  private Uri a;
  private fz b;
  private final m<TalkTopic> c = new ec(this);
  
  private void a()
  {
    disableLoading();
    startActivity(new Intent(this, ActivityTalk.class));
    AppData.a(new o(a));
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getIntent().getData();
    if (a != null)
    {
      paramBundle = (String)a.getPathSegments().get(0);
      if (!TextUtils.equals("talk", paramBundle)) {
        break label54;
      }
      a();
    }
    label54:
    while (!TextUtils.equals("topic", paramBundle)) {
      return;
    }
    enableLoading(null, 2131166015);
    b = new fz(a.getLastPathSegment(), c);
    b.execute(new String[0]);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("talk_topic_request", b);
  }
  
  protected void onResume()
  {
    super.onResume();
    b = ((fz)thawRequest("talk_topic_request", b, c));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTalkUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */