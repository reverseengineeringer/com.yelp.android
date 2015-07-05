package com.yelp.android.ui.widgets;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;

public class ZoomViewPager
  extends ViewPager
{
  public ZoomViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public ZoomViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramView instanceof ScaleWebImageView)) {
      return ((ScaleWebImageView)paramView).canScrollHorizontally(-paramInt1);
    }
    return super.a(paramView, paramBoolean, paramInt1, paramInt2, paramInt3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ZoomViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */