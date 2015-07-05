package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.widgets.RoundedImageView;
import java.util.List;

public class ay
  extends au<Event>
{
  public static Event a = new Event();
  private j b;
  
  public ay(Fragment paramFragment)
  {
    b = h.a(paramFragment);
  }
  
  public Event a(int paramInt)
  {
    if ((paramInt < a().size()) && (paramInt < getCount() - 1)) {
      return (Event)a().get(paramInt);
    }
    return a;
  }
  
  public void a(List<Event> paramList)
  {
    super.a(paramList.subList(0, Math.min(3, paramList.size())));
  }
  
  public int getCount()
  {
    if (a().isEmpty()) {
      return 0;
    }
    return a().size() + 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    if (a(paramInt) == a)
    {
      paramView = LayoutInflater.from(localContext).inflate(2130903254, paramViewGroup, false);
      ((TextView)paramView.findViewById(2131493668)).setText(2131166108);
      return paramView;
    }
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof az)) {}
    }
    else
    {
      localView = LayoutInflater.from(localContext).inflate(2130903251, paramViewGroup, false);
      localView.setTag(new az(localView));
    }
    paramView = (az)localView.getTag();
    paramViewGroup = a(paramInt);
    if (paramViewGroup.getPhoto() != null) {
      b.a(paramViewGroup.getPhoto().getThumbnailUrl()).b(2130837656).a(a);
    }
    for (;;)
    {
      b.setText(paramViewGroup.getName());
      c.setText(paramViewGroup.getFormattedTimeRange(localContext));
      return localView;
      a.setImageResource(2130837656);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */