package com.yelp.android.ui.panels;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.categorypicker.f;
import com.yelp.android.ui.util.au;

public class s
  extends au<Category>
{
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903152, paramViewGroup, false);
      paramViewGroup = new u(paramView, null);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      Category localCategory = (Category)getItem(paramInt);
      a.setText(f.a(localCategory.getName(), localCategory.getParent()));
      return paramView;
      paramViewGroup = (u)paramView.getTag();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */