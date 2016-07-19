package com.yelp.android.ui.activities.feed.viewbinder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.cg.g;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.util.w;

public class t
  extends w<YelpCheckIn>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903349, paramViewGroup, false);
      localView.setTag(new g(localView));
    }
    paramView = (g)localView.getTag();
    paramView.a(((YelpCheckIn)getItem(paramInt)).y(), paramViewGroup.getContext());
    paramView.b(new t.1(this, paramInt));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */