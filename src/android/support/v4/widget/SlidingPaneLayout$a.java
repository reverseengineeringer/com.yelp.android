package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.ai;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;

class SlidingPaneLayout$a
  extends a
{
  private final Rect c = new Rect();
  
  SlidingPaneLayout$a(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  private void a(c paramc1, c paramc2)
  {
    Rect localRect = c;
    paramc2.a(localRect);
    paramc1.b(localRect);
    paramc2.c(localRect);
    paramc1.d(localRect);
    paramc1.c(paramc2.h());
    paramc1.a(paramc2.p());
    paramc1.b(paramc2.q());
    paramc1.d(paramc2.s());
    paramc1.h(paramc2.m());
    paramc1.f(paramc2.k());
    paramc1.a(paramc2.f());
    paramc1.b(paramc2.g());
    paramc1.d(paramc2.i());
    paramc1.e(paramc2.j());
    paramc1.g(paramc2.l());
    paramc1.a(paramc2.b());
    paramc1.b(paramc2.c());
  }
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
  }
  
  public void a(View paramView, c paramc)
  {
    c localc = c.a(paramc);
    super.a(paramView, localc);
    a(paramc, localc);
    localc.t();
    paramc.b(SlidingPaneLayout.class.getName());
    paramc.a(paramView);
    paramView = ai.i(paramView);
    if ((paramView instanceof View)) {
      paramc.c((View)paramView);
    }
    int j = a.getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView = a.getChildAt(i);
      if ((!b(paramView)) && (paramView.getVisibility() == 0))
      {
        ai.c(paramView, 1);
        paramc.b(paramView);
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
    return a.e(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */