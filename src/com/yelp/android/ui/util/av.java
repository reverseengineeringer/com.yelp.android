package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.ui.panels.PanelLoading;

public class av
  extends h
{
  public av()
  {
    super(new View[0]);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    if ((paramView instanceof PanelLoading)) {
      ((PanelLoading)paramView).b();
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */