package android.support.v4.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import com.yelp.android.h.c;
import com.yelp.android.h.m;

class NestedScrollView$a
  extends android.support.v4.view.a
{
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramView = (NestedScrollView)paramView;
    paramAccessibilityEvent.setClassName(ScrollView.class.getName());
    paramAccessibilityEvent = com.yelp.android.h.a.a(paramAccessibilityEvent);
    if (NestedScrollView.a(paramView) > 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramAccessibilityEvent.a(bool);
      paramAccessibilityEvent.d(paramView.getScrollX());
      paramAccessibilityEvent.e(paramView.getScrollY());
      paramAccessibilityEvent.f(paramView.getScrollX());
      paramAccessibilityEvent.g(NestedScrollView.a(paramView));
      return;
    }
  }
  
  public void a(View paramView, c paramc)
  {
    super.a(paramView, paramc);
    paramView = (NestedScrollView)paramView;
    paramc.b(ScrollView.class.getName());
    if (paramView.isEnabled())
    {
      int i = NestedScrollView.a(paramView);
      if (i > 0)
      {
        paramc.i(true);
        if (paramView.getScrollY() > 0) {
          paramc.a(8192);
        }
        if (paramView.getScrollY() < i) {
          paramc.a(4096);
        }
      }
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    paramView = (NestedScrollView)paramView;
    if (!paramView.isEnabled()) {
      return false;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      paramInt = Math.min(paramView.getHeight() - paramView.getPaddingBottom() - paramView.getPaddingTop() + paramView.getScrollY(), NestedScrollView.a(paramView));
      if (paramInt != paramView.getScrollY())
      {
        paramView.b(0, paramInt);
        return true;
      }
      return false;
    }
    paramInt = paramView.getHeight();
    int i = paramView.getPaddingBottom();
    int j = paramView.getPaddingTop();
    paramInt = Math.max(paramView.getScrollY() - (paramInt - i - j), 0);
    if (paramInt != paramView.getScrollY())
    {
      paramView.b(0, paramInt);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.NestedScrollView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */