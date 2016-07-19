package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.eq;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import com.yelp.android.ui.activities.talk.TalkViewPost;

public class ActivityTalkTopicFetcher
  extends YelpActivity
{
  private eq a;
  private final ApiRequest.b<TalkTopic> b = new ApiRequest.b()
  {
    public void a(ApiRequest paramAnonymousApiRequest, TalkTopic paramAnonymousTalkTopic)
    {
      disableLoading();
      startActivity(TalkViewPost.a(ActivityTalkTopicFetcher.this, paramAnonymousTalkTopic));
      finish();
    }
    
    public void onError(ApiRequest paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
      ActivityTalkTopicFetcher.a(ActivityTalkTopicFetcher.this);
    }
  };
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityTalkTopicFetcher.class);
    paramContext.putExtra("topic_alias", paramString);
    return paramContext;
  }
  
  private void a()
  {
    disableLoading();
    startActivity(new Intent(this, ActivityTalk.class));
    finish();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getStringExtra("topic_alias");
    if (TextUtils.isEmpty(paramBundle))
    {
      a();
      return;
    }
    enableLoading(null, 2131166073);
    a = new eq(paramBundle, b);
    a.f(new String[0]);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("talk_topic_request", a);
  }
  
  protected void onResume()
  {
    super.onResume();
    a = ((eq)thawRequest("talk_topic_request", a, b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTalkTopicFetcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */