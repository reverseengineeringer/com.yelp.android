package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.view.View;
import com.yelp.android.ba.d;
import com.yelp.android.ba.f;
import com.yelp.android.serializable.FeedEntry;

class j
{
  private f b;
  private d c;
  
  public j(i parami, FeedType paramFeedType, View paramView)
  {
    b = new f(paramFeedType, paramView, 2131493692);
    c = new d(paramView, 2131493674);
  }
  
  public void a(FeedEntry paramFeedEntry, int paramInt, Context paramContext)
  {
    b.a(paramFeedEntry, paramInt, paramContext);
    c.a(paramFeedEntry, paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */