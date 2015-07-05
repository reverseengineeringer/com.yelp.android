package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.ce;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.g;
import java.util.List;

class o
  extends a
{
  private final Rect c = new Rect();
  
  o(DrawerLayout paramDrawerLayout) {}
  
  private void a(g paramg, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (DrawerLayout.l(localView)) {
        paramg.b(localView);
      }
      i += 1;
    }
  }
  
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
  }
  
  public void a(View paramView, g paramg)
  {
    if (DrawerLayout.e()) {
      super.a(paramView, paramg);
    }
    for (;;)
    {
      paramg.b(DrawerLayout.class.getName());
      paramg.a(false);
      paramg.b(false);
      return;
      g localg = g.a(paramg);
      super.a(paramView, localg);
      paramg.a(paramView);
      ViewParent localViewParent = ce.i(paramView);
      if ((localViewParent instanceof View)) {
        paramg.c((View)localViewParent);
      }
      a(paramg, localg);
      localg.t();
      a(paramg, (ViewGroup)paramView);
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.e()) || (DrawerLayout.l(paramView))) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramView = paramAccessibilityEvent.getText();
      paramAccessibilityEvent = DrawerLayout.a(b);
      if (paramAccessibilityEvent != null)
      {
        int i = b.e(paramAccessibilityEvent);
        paramAccessibilityEvent = b.a(i);
        if (paramAccessibilityEvent != null) {
          paramView.add(paramAccessibilityEvent);
        }
      }
      return true;
    }
    return super.b(paramView, paramAccessibilityEvent);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */