package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.c;

class a$a
  extends a.d
{
  public Object a()
  {
    return b.a();
  }
  
  public Object a(final a parama)
  {
    b.a(new b.a()
    {
      public void a(View paramAnonymousView, int paramAnonymousInt)
      {
        parama.a(paramAnonymousView, paramAnonymousInt);
      }
      
      public void a(View paramAnonymousView, Object paramAnonymousObject)
      {
        parama.a(paramAnonymousView, new c(paramAnonymousObject));
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
  
  public void a(Object paramObject, View paramView, int paramInt)
  {
    b.a(paramObject, paramView, paramInt);
  }
  
  public void a(Object paramObject, View paramView, c paramc)
  {
    b.a(paramObject, paramView, paramc.a());
  }
  
  public boolean a(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return b.a(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public boolean a(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return b.a(paramObject, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public void b(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    b.b(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public void c(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    b.c(paramObject, paramView, paramAccessibilityEvent);
  }
  
  public void d(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    b.d(paramObject, paramView, paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */