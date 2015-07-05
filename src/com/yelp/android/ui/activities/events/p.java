package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.talk.EventTalkViewPost;
import java.util.Map;

class p
  extends d
{
  p(EventFragment paramEventFragment, EventIri paramEventIri, Map paramMap, Activity paramActivity)
  {
    super(paramEventIri, paramMap);
  }
  
  public void a(View paramView)
  {
    b.startActivity(EventTalkViewPost.a(a, EventFragment.a(b)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */