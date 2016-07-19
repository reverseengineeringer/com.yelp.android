package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.j;

public class a
{
  private static final b a;
  private static final Object c;
  final Object b = a.a(this);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a = new c();
    }
    for (;;)
    {
      c = a.a();
      return;
      if (Build.VERSION.SDK_INT >= 14) {
        a = new a();
      } else {
        a = new d();
      }
    }
  }
  
  public j a(View paramView)
  {
    return a.a(c, paramView);
  }
  
  Object a()
  {
    return b;
  }
  
  public void a(View paramView, int paramInt)
  {
    a.a(c, paramView, paramInt);
  }
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.b(c, paramView, paramAccessibilityEvent);
  }
  
  public void a(View paramView, com.yelp.android.h.c paramc)
  {
    a.a(c, paramView, paramc);
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    return a.a(c, paramView, paramInt, paramBundle);
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(c, paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.c(c, paramView, paramAccessibilityEvent);
  }
  
  public void c(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.d(c, paramView, paramAccessibilityEvent);
  }
  
  public boolean d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(c, paramView, paramAccessibilityEvent);
  }
  
  static class a
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
          parama.a(paramAnonymousView, new com.yelp.android.h.c(paramAnonymousObject));
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
    
    public void a(Object paramObject, View paramView, com.yelp.android.h.c paramc)
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
  
  static abstract interface b
  {
    public abstract j a(Object paramObject, View paramView);
    
    public abstract Object a();
    
    public abstract Object a(a parama);
    
    public abstract void a(Object paramObject, View paramView, int paramInt);
    
    public abstract void a(Object paramObject, View paramView, com.yelp.android.h.c paramc);
    
    public abstract boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle);
    
    public abstract boolean a(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract boolean a(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void b(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void c(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void d(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent);
  }
  
  static class c
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
  
  static class d
    implements a.b
  {
    public j a(Object paramObject, View paramView)
    {
      return null;
    }
    
    public Object a()
    {
      return null;
    }
    
    public Object a(a parama)
    {
      return null;
    }
    
    public void a(Object paramObject, View paramView, int paramInt) {}
    
    public void a(Object paramObject, View paramView, com.yelp.android.h.c paramc) {}
    
    public boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    public boolean a(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return false;
    }
    
    public boolean a(Object paramObject, ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return true;
    }
    
    public void b(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {}
    
    public void c(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {}
    
    public void d(Object paramObject, View paramView, AccessibilityEvent paramAccessibilityEvent) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */