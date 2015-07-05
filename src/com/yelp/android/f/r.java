package com.yelp.android.f;

import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;

class r
{
  public static Object a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2)
  {
    return AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean1, paramBoolean2);
  }
  
  public static Object a(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    return AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean, paramInt3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */