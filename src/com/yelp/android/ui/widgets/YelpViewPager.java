package com.yelp.android.ui.widgets;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bo;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;

public class YelpViewPager
  extends ViewPager
{
  private static final int a = View.MeasureSpec.makeMeasureSpec(-2, 0);
  
  public YelpViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public YelpViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private int d(int paramInt)
  {
    int j = 0;
    int k = View.MeasureSpec.makeMeasureSpec((int)(View.MeasureSpec.getSize(paramInt) * getAdapter().getPageWidth(0)), 1073741824);
    int i = 0;
    paramInt = j;
    while (paramInt < getChildCount())
    {
      View localView = getChildAt(paramInt);
      localView.measure(k, a);
      i = Math.max(i, localView.getMeasuredHeight());
      paramInt += 1;
    }
    return i;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (getChildCount() > 0) {
      setMeasuredDimension(getMeasuredWidth(), d(paramInt1));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.YelpViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */