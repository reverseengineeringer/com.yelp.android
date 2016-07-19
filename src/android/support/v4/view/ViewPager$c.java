package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;
import com.yelp.android.h.m;

class ViewPager$c
  extends a
{
  ViewPager$c(ViewPager paramViewPager) {}
  
  private boolean b()
  {
    return (ViewPager.a(a) != null) && (ViewPager.a(a).b() > 1);
  }
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = m.a();
    paramView.a(b());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.a(a) != null))
    {
      paramView.a(ViewPager.a(a).b());
      paramView.b(ViewPager.b(a));
      paramView.c(ViewPager.b(a));
    }
  }
  
  public void a(View paramView, c paramc)
  {
    super.a(paramView, paramc);
    paramc.b(ViewPager.class.getName());
    paramc.i(b());
    if (a.canScrollHorizontally(1)) {
      paramc.a(4096);
    }
    if (a.canScrollHorizontally(-1)) {
      paramc.a(8192);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (a.canScrollHorizontally(1))
      {
        a.setCurrentItem(ViewPager.b(a) + 1);
        return true;
      }
      return false;
    }
    if (a.canScrollHorizontally(-1))
    {
      a.setCurrentItem(ViewPager.b(a) - 1);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */