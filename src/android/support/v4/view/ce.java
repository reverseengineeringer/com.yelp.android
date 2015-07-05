package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public class ce
{
  static final co a = new cf();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new cn();
      return;
    }
    if (i >= 19)
    {
      a = new cm();
      return;
    }
    if (i >= 17)
    {
      a = new cl();
      return;
    }
    if (i >= 16)
    {
      a = new ck();
      return;
    }
    if (i >= 14)
    {
      a = new cj();
      return;
    }
    if (i >= 11)
    {
      a = new ci();
      return;
    }
    if (i >= 9)
    {
      a = new ch();
      return;
    }
    if (i >= 7)
    {
      a = new cg();
      return;
    }
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramInt1, paramInt2, paramInt3);
  }
  
  public static int a(View paramView)
  {
    return a.a(paramView);
  }
  
  public static void a(View paramView, float paramFloat)
  {
    a.a(paramView, paramFloat);
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    a.a(paramView, paramInt, paramPaint);
  }
  
  public static void a(View paramView, Paint paramPaint)
  {
    a.a(paramView, paramPaint);
  }
  
  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }
  
  public static void a(View paramView, bn parambn)
  {
    a.a(paramView, parambn);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }
  
  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    a.a(paramView, paramRunnable, paramLong);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    a.a(paramView, paramBoolean);
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }
  
  public static void b(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }
  
  public static void b(View paramView, boolean paramBoolean)
  {
    a.b(paramView, paramBoolean);
  }
  
  public static boolean b(View paramView)
  {
    return a.b(paramView);
  }
  
  public static boolean b(View paramView, int paramInt)
  {
    return a.b(paramView, paramInt);
  }
  
  public static void c(View paramView, float paramFloat)
  {
    a.c(paramView, paramFloat);
  }
  
  public static void c(View paramView, int paramInt)
  {
    a.c(paramView, paramInt);
  }
  
  public static boolean c(View paramView)
  {
    return a.c(paramView);
  }
  
  public static void d(View paramView)
  {
    a.d(paramView);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    a.d(paramView, paramFloat);
  }
  
  public static int e(View paramView)
  {
    return a.e(paramView);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    a.e(paramView, paramFloat);
  }
  
  public static float f(View paramView)
  {
    return a.f(paramView);
  }
  
  public static void f(View paramView, float paramFloat)
  {
    a.f(paramView, paramFloat);
  }
  
  public static int g(View paramView)
  {
    return a.g(paramView);
  }
  
  public static int h(View paramView)
  {
    return a.h(paramView);
  }
  
  public static ViewParent i(View paramView)
  {
    return a.i(paramView);
  }
  
  public static boolean j(View paramView)
  {
    return a.j(paramView);
  }
  
  public static int k(View paramView)
  {
    return a.k(paramView);
  }
  
  public static int l(View paramView)
  {
    return a.l(paramView);
  }
  
  public static float m(View paramView)
  {
    return a.m(paramView);
  }
  
  public static float n(View paramView)
  {
    return a.n(paramView);
  }
  
  public static int o(View paramView)
  {
    return a.p(paramView);
  }
  
  public static int p(View paramView)
  {
    return a.q(paramView);
  }
  
  public static eh q(View paramView)
  {
    return a.r(paramView);
  }
  
  public static float r(View paramView)
  {
    return a.o(paramView);
  }
  
  public static int s(View paramView)
  {
    return a.s(paramView);
  }
  
  public static void t(View paramView)
  {
    a.t(paramView);
  }
  
  public static boolean u(View paramView)
  {
    return a.u(paramView);
  }
  
  public static void v(View paramView)
  {
    a.v(paramView);
  }
  
  public static void w(View paramView)
  {
    a.w(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */