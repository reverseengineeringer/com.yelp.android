package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

public class p
  extends ArrayAdapter<q>
{
  private LayoutInflater a;
  
  public p(Context paramContext, List<q> paramList)
  {
    super(paramContext, 0, paramList);
    a = LayoutInflater.from(paramContext);
  }
  
  protected View a(int paramInt1, ViewGroup paramViewGroup, int paramInt2)
  {
    paramViewGroup = a.inflate(paramInt2, paramViewGroup, false);
    paramViewGroup.setTag(new r(paramViewGroup));
    return paramViewGroup;
  }
  
  protected void a(View paramView, int paramInt)
  {
    paramView = (r)paramView.getTag();
    q localq = (q)getItem(paramInt);
    if (e > 0)
    {
      a.setText(e);
      return;
    }
    a.setText(d);
  }
  
  public void a(List<q> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      add((q)paramList.next());
    }
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup, 17367049);
    }
    a(localView, paramInt);
    return localView;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup, 17367048);
    }
    a(localView, paramInt);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */