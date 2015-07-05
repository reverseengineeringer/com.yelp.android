package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.BookmarkFeedEntry;
import com.yelp.android.serializable.FeedEntry;

public class i
  extends b<BookmarkFeedEntry>
{
  protected View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903259, paramViewGroup, false);
      localView.setTag(new j(this, paramFeedType, localView));
    }
    ((j)localView.getTag()).a(paramFeedEntry, paramInt, localView.getContext());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */