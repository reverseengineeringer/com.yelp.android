package com.yelp.android.ui.widgets;

import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

final class QuantityDropDownView$b
  extends BaseAdapter
{
  private final int a;
  private final int b;
  private final int c;
  
  public QuantityDropDownView$b(int paramInt, Pair<Integer, Integer> paramPair)
  {
    a = ((Integer)first).intValue();
    b = ((Integer)second).intValue();
    c = paramInt;
  }
  
  public Integer a(int paramInt)
  {
    return Integer.valueOf(a + paramInt);
  }
  
  public int getCount()
  {
    return b - a + 1;
  }
  
  public long getItemId(int paramInt)
  {
    return a + paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(c, paramViewGroup, false);
    }
    for (;;)
    {
      TextView localTextView = (TextView)paramView.getTag();
      paramViewGroup = localTextView;
      if (localTextView == null) {
        paramViewGroup = (TextView)paramView;
      }
      paramViewGroup.setText(String.valueOf(a(paramInt)));
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.QuantityDropDownView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */