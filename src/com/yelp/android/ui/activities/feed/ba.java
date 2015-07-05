package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;

public class ba
  extends b
{
  private final bd a;
  
  public ba(bd parambd)
  {
    a = parambd;
  }
  
  public View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903264, paramViewGroup, false);
      localView.setTag(new bb(this, paramFeedType, localView));
    }
    ((bb)localView.getTag()).a((ReviewFeedEntry)paramFeedEntry, paramInt, localView.getContext());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */