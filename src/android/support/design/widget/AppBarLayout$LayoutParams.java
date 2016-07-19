package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.a.a.i;

public class AppBarLayout$LayoutParams
  extends LinearLayout.LayoutParams
{
  int a = 1;
  Interpolator b;
  
  public AppBarLayout$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public AppBarLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.AppBarLayout_LayoutParams);
    a = paramAttributeSet.getInt(a.i.AppBarLayout_LayoutParams_layout_scrollFlags, 0);
    if (paramAttributeSet.hasValue(a.i.AppBarLayout_LayoutParams_layout_scrollInterpolator)) {
      b = AnimationUtils.loadInterpolator(paramContext, paramAttributeSet.getResourceId(a.i.AppBarLayout_LayoutParams_layout_scrollInterpolator, 0));
    }
    paramAttributeSet.recycle();
  }
  
  public AppBarLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public AppBarLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public AppBarLayout$LayoutParams(LinearLayout.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public int a()
  {
    return a;
  }
  
  public Interpolator b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */