package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bv.a.a;
import com.yelp.android.bv.a.b;
import com.yelp.android.bv.c;
import com.yelp.android.bv.c.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.RoundedImageView;

public class EventTalkViewPost
  extends TalkViewPost
{
  private Event a;
  private ApiRequest.b<Integer> b = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Integer paramAnonymousInteger)
    {
      a(paramAnonymousInteger.intValue());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, Event paramEvent)
  {
    paramContext = new Intent(paramContext, EventTalkViewPost.class);
    paramContext.putExtra("topic", TalkTopic.a(paramEvent));
    paramContext.putExtra("event", paramEvent);
    return paramContext;
  }
  
  public c a(String paramString, int paramInt, ApiRequest.b<c.b> paramb)
  {
    return new a.a(a.I(), paramString, paramInt, paramb);
  }
  
  protected c a(String paramString1, String paramString2, ApiRequest.b<c.b> paramb)
  {
    return new a.b(a.I(), paramString1, paramString2, paramb);
  }
  
  protected void a(View paramView)
  {
    ((TextView)paramView.findViewById(2131690656)).setText(a.a(this));
    paramView = (RoundedImageView)paramView.findViewById(2131690390);
    if (a.J() != null)
    {
      t.a(this).a(a.J().f()).b(2130837698).a(paramView);
      return;
    }
    paramView.setImageResource(2130837698);
  }
  
  protected void a(String paramString)
  {
    paramString = new com.yelp.android.bv.b(a.I(), paramString, b);
    paramString.f(new Void[0]);
    enableLoading(paramString);
  }
  
  protected int b()
  {
    return 2130903398;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a = ((Event)getIntent().getParcelableExtra("event"));
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.EventTalkViewPost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */