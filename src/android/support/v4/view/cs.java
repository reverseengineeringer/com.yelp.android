package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class cs
{
  public static void a(View paramView, Object paramObject)
  {
    paramView.setAccessibilityDelegate((View.AccessibilityDelegate)paramObject);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
  
  public static boolean b(View paramView, int paramInt)
  {
    return paramView.canScrollVertically(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */