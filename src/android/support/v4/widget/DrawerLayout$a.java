package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.a;
import android.support.v4.view.ai;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;
import com.yelp.android.h.c.a;
import java.util.List;

class DrawerLayout$a
  extends a
{
  private final Rect c = new Rect();
  
  DrawerLayout$a(DrawerLayout paramDrawerLayout) {}
  
  private void a(c paramc, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (DrawerLayout.l(localView)) {
        paramc.b(localView);
      }
      i += 1;
    }
  }
  
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
  }
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
  
  public void a(View paramView, c paramc)
  {
    if (DrawerLayout.e()) {
      super.a(paramView, paramc);
    }
    for (;;)
    {
      paramc.b(DrawerLayout.class.getName());
      paramc.a(false);
      paramc.b(false);
      paramc.a(c.a.a);
      paramc.a(c.a.b);
      return;
      c localc = c.a(paramc);
      super.a(paramView, localc);
      paramc.a(paramView);
      ViewParent localViewParent = ai.i(paramView);
      if ((localViewParent instanceof View)) {
        paramc.c((View)localViewParent);
      }
      a(paramc, localc);
      localc.t();
      a(paramc, (ViewGroup)paramView);
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.e()) || (DrawerLayout.l(paramView))) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramView = paramAccessibilityEvent.getText();
      paramAccessibilityEvent = DrawerLayout.a(a);
      if (paramAccessibilityEvent != null)
      {
        int i = a.e(paramAccessibilityEvent);
        paramAccessibilityEvent = a.a(i);
        if (paramAccessibilityEvent != null) {
          paramView.add(paramAccessibilityEvent);
        }
      }
      return true;
    }
    return super.d(paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */