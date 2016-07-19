package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class v
{
  Object a;
  a b;
  
  private v(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      b = new d();
    }
    for (;;)
    {
      a = b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        b = new c();
      } else {
        b = new b();
      }
    }
  }
  
  v(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static v a(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public static v a(Context paramContext, Interpolator paramInterpolator)
  {
    return new v(paramContext, paramInterpolator);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public int b()
  {
    return b.b(a);
  }
  
  public int c()
  {
    return b.c(a);
  }
  
  public int d()
  {
    return b.g(a);
  }
  
  public int e()
  {
    return b.h(a);
  }
  
  public float f()
  {
    return b.d(a);
  }
  
  public boolean g()
  {
    return b.e(a);
  }
  
  public void h()
  {
    b.f(a);
  }
  
  static abstract interface a
  {
    public abstract Object a(Context paramContext, Interpolator paramInterpolator);
    
    public abstract void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
    
    public abstract void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);
    
    public abstract void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10);
    
    public abstract boolean a(Object paramObject);
    
    public abstract int b(Object paramObject);
    
    public abstract int c(Object paramObject);
    
    public abstract float d(Object paramObject);
    
    public abstract boolean e(Object paramObject);
    
    public abstract void f(Object paramObject);
    
    public abstract int g(Object paramObject);
    
    public abstract int h(Object paramObject);
  }
  
  static class b
    implements v.a
  {
    public Object a(Context paramContext, Interpolator paramInterpolator)
    {
      if (paramInterpolator != null) {
        return new Scroller(paramContext, paramInterpolator);
      }
      return new Scroller(paramContext);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      ((Scroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      ((Scroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
    {
      ((Scroller)paramObject).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
    {
      ((Scroller)paramObject).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    }
    
    public boolean a(Object paramObject)
    {
      return ((Scroller)paramObject).isFinished();
    }
    
    public int b(Object paramObject)
    {
      return ((Scroller)paramObject).getCurrX();
    }
    
    public int c(Object paramObject)
    {
      return ((Scroller)paramObject).getCurrY();
    }
    
    public float d(Object paramObject)
    {
      return 0.0F;
    }
    
    public boolean e(Object paramObject)
    {
      return ((Scroller)paramObject).computeScrollOffset();
    }
    
    public void f(Object paramObject)
    {
      ((Scroller)paramObject).abortAnimation();
    }
    
    public int g(Object paramObject)
    {
      return ((Scroller)paramObject).getFinalX();
    }
    
    public int h(Object paramObject)
    {
      return ((Scroller)paramObject).getFinalY();
    }
  }
  
  static class c
    implements v.a
  {
    public Object a(Context paramContext, Interpolator paramInterpolator)
    {
      return w.a(paramContext, paramInterpolator);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      w.a(paramObject, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      w.a(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
    {
      w.a(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
    {
      w.a(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
    }
    
    public boolean a(Object paramObject)
    {
      return w.a(paramObject);
    }
    
    public int b(Object paramObject)
    {
      return w.b(paramObject);
    }
    
    public int c(Object paramObject)
    {
      return w.c(paramObject);
    }
    
    public float d(Object paramObject)
    {
      return 0.0F;
    }
    
    public boolean e(Object paramObject)
    {
      return w.d(paramObject);
    }
    
    public void f(Object paramObject)
    {
      w.e(paramObject);
    }
    
    public int g(Object paramObject)
    {
      return w.f(paramObject);
    }
    
    public int h(Object paramObject)
    {
      return w.g(paramObject);
    }
  }
  
  static class d
    extends v.c
  {
    public float d(Object paramObject)
    {
      return x.a(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */