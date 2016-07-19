package com.yelp.android.h;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

class l
{
  public static Object a(a parama)
  {
    new AccessibilityNodeProvider()
    {
      public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramAnonymousInt)
      {
        return (AccessibilityNodeInfo)a.a(paramAnonymousInt);
      }
      
      public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramAnonymousString, int paramAnonymousInt)
      {
        return a.a(paramAnonymousString, paramAnonymousInt);
      }
      
      public AccessibilityNodeInfo findFocus(int paramAnonymousInt)
      {
        return (AccessibilityNodeInfo)a.b(paramAnonymousInt);
      }
      
      public boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return a.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
    };
  }
  
  static abstract interface a
  {
    public abstract Object a(int paramInt);
    
    public abstract List<Object> a(String paramString, int paramInt);
    
    public abstract boolean a(int paramInt1, int paramInt2, Bundle paramBundle);
    
    public abstract Object b(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */