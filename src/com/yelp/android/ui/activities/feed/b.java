package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;
import java.util.HashSet;
import java.util.Set;

public abstract class b<T extends FeedEntry>
  implements at<T>
{
  private final Set<FeedEntry> a = new HashSet();
  
  public int a()
  {
    return a.size();
  }
  
  protected abstract View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup);
  
  public View b(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    a.add(paramFeedEntry);
    return a(paramFeedEntry, paramFeedType, paramInt, paramView, paramViewGroup);
  }
  
  public void b()
  {
    a.clear();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */