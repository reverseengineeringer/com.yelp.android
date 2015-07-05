package com.yelp.android.ui.activities.feed;

import android.support.v7.widget.bt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.bumptech.glide.j;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.FeedEntry;

public class d
  extends b<BizPhotoFeedEntry>
{
  private final bt a;
  private j b;
  
  public d(bt parambt, j paramj)
  {
    a = parambt;
    b = paramj;
  }
  
  public View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903261, paramViewGroup, false);
      localView.setTag(new e(this, paramFeedType, localView));
    }
    ((e)localView.getTag()).a(paramFeedEntry, paramInt, localView.getContext());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */