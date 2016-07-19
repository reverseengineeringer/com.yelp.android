package com.yelp.android.ui.util;

import android.util.Property;
import android.view.View;

final class av$7
  extends Property<View, Integer>
{
  av$7(Class paramClass, String paramString)
  {
    super(paramClass, paramString);
  }
  
  public Integer a(View paramView)
  {
    return Integer.valueOf(paramView.getHeight());
  }
  
  public void a(View paramView, Integer paramInteger)
  {
    getLayoutParamsheight = paramInteger.intValue();
    paramView.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */