package com.flipboard.bottomsheet.commons;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.cq.a.c;
import com.yelp.android.cq.a.d;
import java.util.ArrayList;

class MenuSheetView$a
  extends BaseAdapter
{
  private final LayoutInflater b;
  
  public MenuSheetView$a(MenuSheetView paramMenuSheetView)
  {
    b = LayoutInflater.from(paramMenuSheetView.getContext());
  }
  
  public MenuSheetView.b a(int paramInt)
  {
    return (MenuSheetView.b)MenuSheetView.a(a).get(paramInt);
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public int getCount()
  {
    return MenuSheetView.a(a).size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    MenuSheetView.b localb = a(paramInt);
    if (localb.a()) {
      return 2;
    }
    if (localb.b().hasSubMenu()) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    MenuSheetView.b localb = a(paramInt);
    switch (getItemViewType(paramInt))
    {
    default: 
      return paramView;
    case 0: 
      if (paramView == null)
      {
        paramView = b;
        if (MenuSheetView.b(a) == MenuSheetView.MenuType.GRID)
        {
          paramInt = a.d.sheet_grid_item;
          paramView = paramView.inflate(paramInt, paramViewGroup, false);
          paramViewGroup = new a(paramView);
          paramView.setTag(paramViewGroup);
        }
      }
      for (;;)
      {
        paramViewGroup.a(localb);
        return paramView;
        paramInt = a.d.sheet_list_item;
        break;
        paramViewGroup = (a)paramView.getTag();
      }
    case 1: 
      if (paramView == null) {
        paramView = b.inflate(a.d.sheet_list_item_subheader, paramViewGroup, false);
      }
      break;
    }
    for (;;)
    {
      ((TextView)paramView).setText(localb.b().getTitle());
      return paramView;
      if (paramView != null) {
        break;
      }
      return b.inflate(a.d.sheet_list_item_separator, paramViewGroup, false);
    }
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return a(paramInt).c();
  }
  
  class a
  {
    final ImageView a;
    final TextView b;
    
    a(View paramView)
    {
      a = ((ImageView)paramView.findViewById(a.c.icon));
      b = ((TextView)paramView.findViewById(a.c.label));
    }
    
    public void a(MenuSheetView.b paramb)
    {
      a.setImageDrawable(paramb.b().getIcon());
      b.setText(paramb.b().getTitle());
    }
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.MenuSheetView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */