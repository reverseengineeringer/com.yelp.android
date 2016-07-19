package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public class k
{
  private static final c b = new a();
  private Object a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      b = new b();
      return;
    }
  }
  
  public k(Context paramContext)
  {
    a = b.a(paramContext);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b.a(a, paramInt1, paramInt2);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public boolean a(float paramFloat)
  {
    return b.a(a, paramFloat);
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    return b.a(a, paramFloat1, paramFloat2);
  }
  
  public boolean a(int paramInt)
  {
    return b.a(a, paramInt);
  }
  
  public boolean a(Canvas paramCanvas)
  {
    return b.a(a, paramCanvas);
  }
  
  public void b()
  {
    b.b(a);
  }
  
  public boolean c()
  {
    return b.c(a);
  }
  
  static class a
    implements k.c
  {
    public Object a(Context paramContext)
    {
      return null;
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2) {}
    
    public boolean a(Object paramObject)
    {
      return true;
    }
    
    public boolean a(Object paramObject, float paramFloat)
    {
      return false;
    }
    
    public boolean a(Object paramObject, float paramFloat1, float paramFloat2)
    {
      return false;
    }
    
    public boolean a(Object paramObject, int paramInt)
    {
      return false;
    }
    
    public boolean a(Object paramObject, Canvas paramCanvas)
    {
      return false;
    }
    
    public void b(Object paramObject) {}
    
    public boolean c(Object paramObject)
    {
      return false;
    }
  }
  
  static class b
    implements k.c
  {
    public Object a(Context paramContext)
    {
      return l.a(paramContext);
    }
    
    public void a(Object paramObject, int paramInt1, int paramInt2)
    {
      l.a(paramObject, paramInt1, paramInt2);
    }
    
    public boolean a(Object paramObject)
    {
      return l.a(paramObject);
    }
    
    public boolean a(Object paramObject, float paramFloat)
    {
      return l.a(paramObject, paramFloat);
    }
    
    public boolean a(Object paramObject, float paramFloat1, float paramFloat2)
    {
      return l.a(paramObject, paramFloat1);
    }
    
    public boolean a(Object paramObject, int paramInt)
    {
      return l.a(paramObject, paramInt);
    }
    
    public boolean a(Object paramObject, Canvas paramCanvas)
    {
      return l.a(paramObject, paramCanvas);
    }
    
    public void b(Object paramObject)
    {
      l.b(paramObject);
    }
    
    public boolean c(Object paramObject)
    {
      return l.c(paramObject);
    }
  }
  
  static abstract interface c
  {
    public abstract Object a(Context paramContext);
    
    public abstract void a(Object paramObject, int paramInt1, int paramInt2);
    
    public abstract boolean a(Object paramObject);
    
    public abstract boolean a(Object paramObject, float paramFloat);
    
    public abstract boolean a(Object paramObject, float paramFloat1, float paramFloat2);
    
    public abstract boolean a(Object paramObject, int paramInt);
    
    public abstract boolean a(Object paramObject, Canvas paramCanvas);
    
    public abstract void b(Object paramObject);
    
    public abstract boolean c(Object paramObject);
  }
  
  static class d
    extends k.b
  {
    public boolean a(Object paramObject, float paramFloat1, float paramFloat2)
    {
      return m.a(paramObject, paramFloat1, paramFloat2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */