package com.yelp.android.f;

import android.view.accessibility.AccessibilityNodeInfo;

class t
{
  public static void a(Object paramObject, int paramInt)
  {
    ((AccessibilityNodeInfo)paramObject).setMovementGranularities(paramInt);
  }
  
  public static void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setVisibleToUser(paramBoolean);
  }
  
  public static boolean a(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isVisibleToUser();
  }
  
  public static int b(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getMovementGranularities();
  }
  
  public static void b(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setAccessibilityFocused(paramBoolean);
  }
  
  public static boolean c(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).isAccessibilityFocused();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */