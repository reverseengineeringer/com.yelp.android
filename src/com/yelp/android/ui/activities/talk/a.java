package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.g;

public class a
  extends BaseAdapter
  implements g
{
  private final a a;
  private PanelLoading b;
  private int c;
  private boolean d;
  
  public a(a parama)
  {
    a = parama;
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
    d = false;
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
    notifyDataSetChanged();
  }
  
  public void clear()
  {
    d = false;
    c = 0;
  }
  
  public int getCount()
  {
    if ((d) || (c != 0)) {
      return 1;
    }
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
    if (d) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (d)
    {
      if (b == null)
      {
        b = new PanelLoading(paramViewGroup.getContext());
        b.setSpinner(CommonLoadingSpinner.SMALL);
      }
      return b;
    }
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903468, paramViewGroup, false);
      localView.setTag(new a.b(localView));
    }
    paramView = (a.b)localView.getTag();
    a.setText(paramViewGroup.getContext().getString(2131166589, new Object[] { Integer.valueOf(Math.abs(c)) }));
    a.setOnClickListener(new a.1(this));
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */