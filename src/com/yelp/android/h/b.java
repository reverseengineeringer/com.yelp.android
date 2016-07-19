package com.yelp.android.h;

import android.view.accessibility.AccessibilityEvent;

class b
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
 * Qualified Name:     com.yelp.android.h.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */