package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.j;

class a$c
  extends a.a
{
  public j a(Object paramObject, View paramView)
  {
    paramObject = c.a(paramObject, paramView);
    if (paramObject != null) {
      return new j(paramObject);
    }
    return null;
  }
  
  public Object a(final a parama)
  {
    c.a(new c.a()
    {
      public Object a(View paramAnonymousView)
      {
        paramAnonymousView = parama.a(paramAnonymousView);
        if (paramAnonymousView != null) {
          return paramAnonymousView.a();
        }
        return null;
      }
      
      public void a(View paramAnonymousView, int paramAnonymousInt)
      {
        parama.a(paramAnonymousView, paramAnonymousInt);
      }
      
      public void a(View paramAnonymousView, Object paramAnonymousObject)
      {
        parama.a(paramAnonymousView, new com.yelp.android.h.c(paramAnonymousObject));
      }
      
      public boolean a(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        return parama.a(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
      }
      
      public boolean a(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return parama.d(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public boolean a(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        return parama.a(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public void b(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        parama.a(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public void c(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        parama.b(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
      
      public void d(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        parama.c(paramAnonymousView, paramAnonymousAccessibilityEvent);
      }
    });
  }
  
  public boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return c.a(paramObject, paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */