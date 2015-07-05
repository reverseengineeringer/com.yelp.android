package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.TipFeedEntry;

public class bg
  extends b<TipFeedEntry>
{
  private final bh a;
  
  public bg(bh parambh)
  {
    a = parambh;
  }
  
  protected View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903266, paramViewGroup, false);
      localView.setTag(new bi(this, paramFeedType, localView));
    }
    ((bi)localView.getTag()).a((TipFeedEntry)paramFeedEntry, paramInt, localView.getContext());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */