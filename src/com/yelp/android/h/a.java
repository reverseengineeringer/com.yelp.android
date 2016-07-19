package com.yelp.android.h;

import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityEvent;

public class a
{
  private static final d a = new c();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new a();
      return;
    }
  }
  
  public static m a(AccessibilityEvent paramAccessibilityEvent)
  {
    return new m(paramAccessibilityEvent);
  }
  
  public static void a(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    a.a(paramAccessibilityEvent, paramInt);
  }
  
  public static int b(AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(paramAccessibilityEvent);
  }
  
  static class a
    extends a.c
  {}
  
  static class b
    extends a.a
  {
    public int a(AccessibilityEvent paramAccessibilityEvent)
    {
      return b.a(paramAccessibilityEvent);
    }
    
    public void a(AccessibilityEvent paramAccessibilityEvent, int paramInt)
    {
      b.a(paramAccessibilityEvent, paramInt);
    }
  }
  
  static class c
    implements a.d
  {
    public int a(AccessibilityEvent paramAccessibilityEvent)
    {
      return 0;
    }
    
    public void a(AccessibilityEvent paramAccessibilityEvent, int paramInt) {}
  }
  
  static abstract interface d
  {
    public abstract int a(AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void a(AccessibilityEvent paramAccessibilityEvent, int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */