package com.yelp.android.f;

import android.view.accessibility.AccessibilityEvent;

class f
{
  public static int a(AccessibilityEvent paramAccessibilityEvent)
  {
    return paramAccessibilityEvent.getContentChangeTypes();
  }
  
  public static void a(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    paramAccessibilityEvent.setContentChangeTypes(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */