package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.ce;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.g;

class bf
  extends a
{
  private final Rect c = new Rect();
  
  bf(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  private void a(g paramg1, g paramg2)
  {
    Rect localRect = c;
    paramg2.a(localRect);
    paramg1.b(localRect);
    paramg2.c(localRect);
    paramg1.d(localRect);
    paramg1.c(paramg2.h());
    paramg1.a(paramg2.p());
    paramg1.b(paramg2.q());
    paramg1.c(paramg2.s());
    paramg1.h(paramg2.m());
    paramg1.f(paramg2.k());
    paramg1.a(paramg2.f());
    paramg1.b(paramg2.g());
    paramg1.d(paramg2.i());
    paramg1.e(paramg2.j());
    paramg1.g(paramg2.l());
    paramg1.a(paramg2.b());
    paramg1.b(paramg2.c());
  }
  
  public void a(View paramView, g paramg)
  {
    g localg = g.a(paramg);
    super.a(paramView, localg);
    a(paramg, localg);
    localg.t();
    paramg.b(SlidingPaneLayout.class.getName());
    paramg.a(paramView);
    paramView = ce.i(paramView);
    if ((paramView instanceof View)) {
      paramg.c((View)paramView);
    }
    int j = b.getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView = b.getChildAt(i);
      if ((!b(paramView)) && (paramView.getVisibility() == 0))
      {
        ce.c(paramView, 1);
        paramg.b(paramView);
      }
      i += 1;
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!b(paramView)) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean b(View paramView)
  {
    return b.e(paramView);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */