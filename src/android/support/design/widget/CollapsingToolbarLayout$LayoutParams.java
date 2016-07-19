package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import com.yelp.android.a.a.i;

public class CollapsingToolbarLayout$LayoutParams
  extends FrameLayout.LayoutParams
{
  int a = 0;
  float b = 0.5F;
  
  public CollapsingToolbarLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.CollapsingAppBarLayout_LayoutParams);
    a = paramContext.getInt(a.i.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
    a(paramContext.getFloat(a.i.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, 0.5F));
    paramContext.recycle();
  }
  
  public CollapsingToolbarLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public CollapsingToolbarLayout$LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public void a(float paramFloat)
  {
    b = paramFloat;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */