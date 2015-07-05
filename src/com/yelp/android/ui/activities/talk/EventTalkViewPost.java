package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.bumptech.glide.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import com.yelp.android.aw.e;
import com.yelp.android.aw.f;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.widgets.RoundedImageView;

public class EventTalkViewPost
  extends TalkViewPost
{
  private Event a;
  private m<Integer> b = new n(this);
  
  public static Intent a(Context paramContext, Event paramEvent)
  {
    paramContext = new Intent(paramContext, EventTalkViewPost.class);
    paramContext.putExtra("extra.topic", TalkTopic.fromEvent(paramEvent));
    paramContext.putExtra("extra.event", paramEvent);
    return paramContext;
  }
  
  public f a(String paramString, int paramInt, m<com.yelp.android.aw.h> paramm)
  {
    return new com.yelp.android.aw.c(a.getId(), paramString, paramInt, paramm);
  }
  
  protected f a(String paramString1, String paramString2, m<com.yelp.android.aw.h> paramm)
  {
    return new com.yelp.android.aw.d(a.getId(), paramString1, paramString2, paramm);
  }
  
  protected void a(View paramView)
  {
    ((TextView)paramView.findViewById(2131493820)).setText(a.getFormattedTimeRange(this));
    paramView = (RoundedImageView)paramView.findViewById(2131493649);
    if (a.getPhoto() != null)
    {
      com.bumptech.glide.h.a(this).a(a.getPhoto().getThumbnailUrl()).b(2130837655).a(paramView);
      return;
    }
    paramView.setImageResource(2130837655);
  }
  
  protected void a(String paramString)
  {
    paramString = new e(a.getId(), paramString, b);
    paramString.execute(new Void[0]);
    enableLoading(paramString);
  }
  
  protected int c()
  {
    return 2130903302;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a = ((Event)getIntent().getParcelableExtra("extra.event"));
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.EventTalkViewPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */