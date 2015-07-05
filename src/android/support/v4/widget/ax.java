package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class ax
{
  Object a;
  ay b;
  
  private ax(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      b = new bb();
    }
    for (;;)
    {
      a = b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        b = new ba();
      } else {
        b = new az();
      }
    }
  }
  
  ax(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static ax a(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public static ax a(Context paramContext, Interpolator paramInterpolator)
  {
    return new ax(paramContext, paramInterpolator);
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
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */