package com.yelp.android.f;

import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityEvent;

public class a
{
  private static final e a = new d();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new b();
      return;
    }
  }
  
  public static aj a(AccessibilityEvent paramAccessibilityEvent)
  {
    return new aj(paramAccessibilityEvent);
  }
  
  public static void a(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    a.a(paramAccessibilityEvent, paramInt);
  }
  
  public static int b(AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */