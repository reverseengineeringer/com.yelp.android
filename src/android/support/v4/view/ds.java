package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.aj;
import com.yelp.android.f.g;

class ds
  extends a
{
  ds(ViewPager paramViewPager) {}
  
  private boolean b()
  {
    return (ViewPager.a(b) != null) && (ViewPager.a(b).getCount() > 1);
  }
  
  public void a(View paramView, g paramg)
  {
    super.a(paramView, paramg);
    paramg.b(ViewPager.class.getName());
    paramg.i(b());
    if (b.canScrollHorizontally(1)) {
      paramg.a(4096);
    }
    if (b.canScrollHorizontally(-1)) {
      paramg.a(8192);
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
      if (b.canScrollHorizontally(1))
      {
        b.setCurrentItem(ViewPager.b(b) + 1);
        return true;
      }
      return false;
    }
    if (b.canScrollHorizontally(-1))
    {
      b.setCurrentItem(ViewPager.b(b) - 1);
      return true;
    }
    return false;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = aj.a();
    paramView.a(b());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.a(b) != null))
    {
      paramView.a(ViewPager.a(b).getCount());
      paramView.b(ViewPager.b(b));
      paramView.c(ViewPager.b(b));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */