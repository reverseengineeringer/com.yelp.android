package com.yelp.android.ui.activities.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.au;

public class z
  extends au<CharSequence>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903367, paramViewGroup, false);
      paramViewGroup = new aa(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      CharSequence localCharSequence = (CharSequence)getItem(paramInt);
      aa.a(paramViewGroup).setTypeface(null, 1);
      aa.a(paramViewGroup).setText(localCharSequence);
      aa.b(paramViewGroup).setText(AppData.b().getString(2131166395));
      return paramView;
      paramViewGroup = (aa)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */