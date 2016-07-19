package com.yelp.android.ui.activities.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.cg.e;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.util.w;

class ActivityEvents$a
  extends w<Event>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903331, paramViewGroup, false);
      localView.setTag(new e(localView));
    }
    paramView = (e)localView.getTag();
    paramView.a((Event)getItem(paramInt), paramViewGroup.getContext());
    paramView.b(new ActivityEvents.a.1(this, paramInt));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityEvents.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */