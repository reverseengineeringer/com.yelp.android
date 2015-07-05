package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;

final class bn
  extends BaseAdapter
{
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public int getCount()
  {
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = paramView;
    if (paramView == null) {
      localObject = new LinearLayout(paramViewGroup.getContext());
    }
    return (View)localObject;
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isEmpty()
  {
    return true;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */