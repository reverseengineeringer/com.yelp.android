package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import com.yelp.android.a.a.i;
import java.util.List;

public class AppBarLayout$ScrollingViewBehavior
  extends ViewOffsetBehavior<View>
{
  private int a;
  
  public AppBarLayout$ScrollingViewBehavior() {}
  
  public AppBarLayout$ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.ScrollingViewBehavior_Params);
    a = paramContext.getDimensionPixelSize(a.i.ScrollingViewBehavior_Params_behavior_overlapTop, 0);
    paramContext.recycle();
  }
  
  private static AppBarLayout a(List<View> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramList.get(i);
      if ((localView instanceof AppBarLayout)) {
        return (AppBarLayout)localView;
      }
      i += 1;
    }
    return null;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = getLayoutParamsheight;
    Object localObject;
    if ((j == -1) || (j == -2))
    {
      localObject = paramCoordinatorLayout.d(paramView);
      if (!((List)localObject).isEmpty()) {
        break label41;
      }
    }
    label41:
    do
    {
      return false;
      localObject = a((List)localObject);
    } while ((localObject == null) || (!ai.D((View)localObject)));
    if (ai.x((View)localObject)) {
      ai.a(paramView, true);
    }
    int i = View.MeasureSpec.getSize(paramInt3);
    paramInt3 = i;
    if (i == 0) {
      paramInt3 = paramCoordinatorLayout.getHeight();
    }
    int k = ((AppBarLayout)localObject).getMeasuredHeight();
    int m = ((AppBarLayout)localObject).getTotalScrollRange();
    if (j == -1) {}
    for (i = 1073741824;; i = Integer.MIN_VALUE)
    {
      paramCoordinatorLayout.a(paramView, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(m + (paramInt3 - k), i), paramInt4);
      return true;
    }
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    return paramView2 instanceof AppBarLayout;
  }
  
  public boolean c(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    CoordinatorLayout.Behavior localBehavior = ((CoordinatorLayout.d)paramView2.getLayoutParams()).b();
    int i;
    if ((localBehavior instanceof AppBarLayout.Behavior))
    {
      i = ((AppBarLayout.Behavior)localBehavior).a();
      int j = paramView2.getHeight();
      int k = a;
      int m = paramCoordinatorLayout.getHeight();
      int n = paramView1.getHeight();
      if ((a == 0) || (!(paramView2 instanceof AppBarLayout))) {
        break label107;
      }
      int i1 = ((AppBarLayout)paramView2).getTotalScrollRange();
      a(a.a(j - k, m - n, Math.abs(i) / i1));
    }
    for (;;)
    {
      return false;
      label107:
      a(i + (paramView2.getHeight() - a));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.ScrollingViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */