package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

class c
{
  public static Object a(a parama)
  {
    new View.AccessibilityDelegate()
    {
      public boolean dispatchPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return a.a(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public AccessibilityNodeProvider getAccessibilityNodeProvider(View paramAnonymousView)
      {
        return (AccessibilityNodeProvider)a.a(paramAnonymousView);
      }
      
      public void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        a.b(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfo paramAnonymousAccessibilityNodeInfo)
      {
        a.a(paramAnonymousView, paramAnonymousAccessibilityNodeInfo);
      }
      
      public void onPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        a.c(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public boolean onRequestSendAccessibilityEvent(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return a.a(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        return a.a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
      
      public void sendAccessibilityEvent(View paramAnonymousView, int paramAnonymousInt)
      {
        a.a(paramAnonymousView, paramAnonymousInt);
      }
      
      public void sendAccessibilityEventUnchecked(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        a.d(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
    };
  }
  
  public static Object a(Object paramObject, View paramView)
  {
    return ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
  }
  
  public static boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public static abstract interface a
  {
    public abstract Object a(View paramView);
    
    public abstract void a(View paramView, int paramInt);
    
    public abstract void a(View paramView, Object paramObject);
    
    public abstract boolean a(View paramView, int paramInt, Bundle paramBundle);
    
    public abstract boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void b(View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void c(View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void d(View paramView, AccessibilityEvent paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */