package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.FeedEntry;
import java.util.HashSet;
import java.util.Set;

public class v<T extends FeedEntry>
  implements at<T>
{
  private final Set<FeedEntry> a = new HashSet();
  
  public int a()
  {
    return a.size();
  }
  
  public View b(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    a.add(paramFeedEntry);
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903313, paramViewGroup, false);
      localView.setTag(new au(paramFeedType, localView));
    }
    paramFeedType = (au)localView.getTag();
    paramFeedType.a(paramFeedEntry, paramInt, paramViewGroup.getContext());
    k.setVisibility(8);
    return localView;
  }
  
  public void b()
  {
    a.clear();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */