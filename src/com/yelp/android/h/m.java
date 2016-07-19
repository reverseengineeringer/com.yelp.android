package com.yelp.android.h;

import android.os.Build.VERSION;

public class m
{
  private static final c a = new e();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
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
  
  public m(Object paramObject)
  {
    b = paramObject;
  }
  
  public static m a()
  {
    return new m(a.a());
  }
  
  public void a(int paramInt)
  {
    a.b(b, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void c(int paramInt)
  {
    a.e(b, paramInt);
  }
  
  public void d(int paramInt)
  {
    a.c(b, paramInt);
  }
  
  public void e(int paramInt)
  {
    a.d(b, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (m)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(int paramInt)
  {
    a.f(b, paramInt);
  }
  
  public void g(int paramInt)
  {
    a.g(b, paramInt);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  static class a
    extends m.e
  {
    public Object a()
    {
      return n.a();
    }
    
    public void a(Object paramObject, int paramInt)
    {
      n.a(paramObject, paramInt);
    }
    
    public void a(Object paramObject, boolean paramBoolean)
    {
      n.a(paramObject, paramBoolean);
    }
    
    public void b(Object paramObject, int paramInt)
    {
      n.b(paramObject, paramInt);
    }
    
    public void c(Object paramObject, int paramInt)
    {
      n.c(paramObject, paramInt);
    }
    
    public void d(Object paramObject, int paramInt)
    {
      n.d(paramObject, paramInt);
    }
    
    public void e(Object paramObject, int paramInt)
    {
      n.e(paramObject, paramInt);
    }
  }
  
  static class b
    extends m.a
  {
    public void f(Object paramObject, int paramInt)
    {
      o.a(paramObject, paramInt);
    }
    
    public void g(Object paramObject, int paramInt)
    {
      o.b(paramObject, paramInt);
    }
  }
  
  static abstract interface c
  {
    public abstract Object a();
    
    public abstract void a(Object paramObject, int paramInt);
    
    public abstract void a(Object paramObject, boolean paramBoolean);
    
    public abstract void b(Object paramObject, int paramInt);
    
    public abstract void c(Object paramObject, int paramInt);
    
    public abstract void d(Object paramObject, int paramInt);
    
    public abstract void e(Object paramObject, int paramInt);
    
    public abstract void f(Object paramObject, int paramInt);
    
    public abstract void g(Object paramObject, int paramInt);
  }
  
  static class d
    extends m.b
  {}
  
  static class e
    implements m.c
  {
    public Object a()
    {
      return null;
    }
    
    public void a(Object paramObject, int paramInt) {}
    
    public void a(Object paramObject, boolean paramBoolean) {}
    
    public void b(Object paramObject, int paramInt) {}
    
    public void c(Object paramObject, int paramInt) {}
    
    public void d(Object paramObject, int paramInt) {}
    
    public void e(Object paramObject, int paramInt) {}
    
    public void f(Object paramObject, int paramInt) {}
    
    public void g(Object paramObject, int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.h.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */