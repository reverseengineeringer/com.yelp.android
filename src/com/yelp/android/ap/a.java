package com.yelp.android.ap;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

public class a
  extends BaseAdapter
{
  private List<View> a = null;
  
  public a(List<View> paramList)
  {
    a = paramList;
  }
  
  protected View a(int paramInt, ViewGroup paramViewGroup)
  {
    throw new RuntimeException("You must override newView()!");
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = (View)a.get(paramInt);
    paramView = localView;
    if (localView == null)
    {
      paramView = a(paramInt, paramViewGroup);
      a.set(paramInt, paramView);
    }
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return getCount();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ap.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */