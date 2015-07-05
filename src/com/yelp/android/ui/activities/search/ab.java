package com.yelp.android.ui.activities.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.ui.util.au;

public class ab
  extends au<CharSequence>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903367, paramViewGroup, false);
      paramViewGroup = new ac(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      ac.a(paramViewGroup).setText((CharSequence)getItem(paramInt));
      return paramView;
      paramViewGroup = (ac)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */