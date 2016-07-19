package com.yelp.android.ui.activities.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.util.w;

public class c
  extends w<CharSequence>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903466, paramViewGroup, false);
      paramViewGroup = new c.a(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      c.a.a(paramViewGroup).setText((CharSequence)getItem(paramInt));
      return paramView;
      paramViewGroup = (c.a)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */