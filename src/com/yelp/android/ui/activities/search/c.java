package com.yelp.android.ui.activities.search;

import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.savedsearch.k;
import com.yelp.android.serializable.Filter;
import com.yelp.android.ui.util.au;
import com.yelp.android.util.StringUtils;

public class c
  extends au<k>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903367, paramViewGroup, false);
      paramViewGroup = new d(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      k localk = (k)getItem(paramInt);
      String str = localk.a().getDisplayString();
      d.a(paramViewGroup).setText(StringUtils.a(SpannableString.valueOf(localk.b())));
      d.b(paramViewGroup).setText(str);
      d.c(paramViewGroup).setText(AppData.b().getString(2131166496));
      return paramView;
      paramViewGroup = (d)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */