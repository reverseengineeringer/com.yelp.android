package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.Gravity;

public class e
{
  static final a a = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new c();
      return;
    }
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
  
  public static void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
  {
    a.a(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, paramInt4);
  }
  
  static abstract interface a
  {
    public abstract int a(int paramInt1, int paramInt2);
    
    public abstract void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4);
  }
  
  static class b
    implements e.a
  {
    public int a(int paramInt1, int paramInt2)
    {
      return 0xFF7FFFFF & paramInt1;
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
    {
      Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2);
    }
  }
  
  static class c
    implements e.a
  {
    public int a(int paramInt1, int paramInt2)
    {
      return f.a(paramInt1, paramInt2);
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
    {
      f.a(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, paramInt4);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */