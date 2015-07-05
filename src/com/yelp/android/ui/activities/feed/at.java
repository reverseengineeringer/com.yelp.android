package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;

public abstract interface at<T extends FeedEntry>
{
  public abstract int a();
  
  public abstract View b(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup);
  
  public abstract void b();
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */