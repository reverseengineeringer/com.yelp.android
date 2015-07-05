package com.yelp.android.ui.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;

public class SquareRelativeLayout
  extends RelativeLayout
{
  public SquareRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = Math.max(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.SquareRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */