package com.yelp.android.ui.activities.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.w;

public class b
  extends w<CharSequence>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903466, paramViewGroup, false);
      paramViewGroup = new b.a(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      CharSequence localCharSequence = (CharSequence)getItem(paramInt);
      b.a.a(paramViewGroup).setTypeface(null, 1);
      b.a.a(paramViewGroup).setText(localCharSequence);
      b.a.b(paramViewGroup).setText(AppData.b().getString(2131166422));
      return paramView;
      paramViewGroup = (b.a)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */