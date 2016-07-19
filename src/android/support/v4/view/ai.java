package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

public class ai
{
  static final k a = new a();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new j();
      return;
    }
    if (i >= 19)
    {
      a = new i();
      return;
    }
    if (i >= 17)
    {
      a = new g();
      return;
    }
    if (i >= 16)
    {
      a = new f();
      return;
    }
    if (i >= 14)
    {
      a = new e();
      return;
    }
    if (i >= 11)
    {
      a = new d();
      return;
    }
    if (i >= 9)
    {
      a = new c();
      return;
    }
    if (i >= 7)
    {
      a = new b();
      return;
    }
  }
  
  public static boolean A(View paramView)
  {
    return a.B(paramView);
  }
  
  public static boolean B(View paramView)
  {
    return a.C(paramView);
  }
  
  public static void C(View paramView)
  {
    a.D(paramView);
  }
  
  public static boolean D(View paramView)
  {
    return a.E(paramView);
  }
  
  public static float E(View paramView)
  {
    return a.F(paramView);
  }
  
  public static boolean F(View paramView)
  {
    return a.G(paramView);
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramInt1, paramInt2, paramInt3);
  }
  
  public static int a(View paramView)
  {
    return a.a(paramView);
  }
  
  public static bg a(View paramView, bg parambg)
  {
    return a.a(paramView, parambg);
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
  
  public static void a(View paramView, ColorStateList paramColorStateList)
  {
    a.a(paramView, paramColorStateList);
  }
  
  public static void a(View paramView, Paint paramPaint)
  {
    a.a(paramView, paramPaint);
  }
  
  public static void a(View paramView, PorterDuff.Mode paramMode)
  {
    a.a(paramView, paramMode);
  }
  
  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }
  
  public static void a(View paramView, ab paramab)
  {
    a.a(paramView, paramab);
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
  
  public static bg b(View paramView, bg parambg)
  {
    return a.b(paramView, parambg);
  }
  
  public static void b(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }
  
  public static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.b(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
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
  
  public static void c(View paramView, boolean paramBoolean)
  {
    a.c(paramView, paramBoolean);
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
  
  public static void d(View paramView, int paramInt)
  {
    paramView.offsetTopAndBottom(paramInt);
    if ((paramInt != 0) && (Build.VERSION.SDK_INT < 11)) {
      paramView.invalidate();
    }
  }
  
  public static int e(View paramView)
  {
    return a.e(paramView);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    a.e(paramView, paramFloat);
  }
  
  public static void e(View paramView, int paramInt)
  {
    paramView.offsetLeftAndRight(paramInt);
    if ((paramInt != 0) && (Build.VERSION.SDK_INT < 11)) {
      paramView.invalidate();
    }
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
  
  public static void g(View paramView, float paramFloat)
  {
    a.f(paramView, paramFloat);
  }
  
  public static int h(View paramView)
  {
    return a.h(paramView);
  }
  
  public static void h(View paramView, float paramFloat)
  {
    a.g(paramView, paramFloat);
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
  
  public static int m(View paramView)
  {
    return a.m(paramView);
  }
  
  public static int n(View paramView)
  {
    return a.n(paramView);
  }
  
  public static float o(View paramView)
  {
    return a.p(paramView);
  }
  
  public static float p(View paramView)
  {
    return a.q(paramView);
  }
  
  public static int q(View paramView)
  {
    return a.s(paramView);
  }
  
  public static int r(View paramView)
  {
    return a.t(paramView);
  }
  
  public static az s(View paramView)
  {
    return a.u(paramView);
  }
  
  public static float t(View paramView)
  {
    return a.r(paramView);
  }
  
  public static float u(View paramView)
  {
    return a.x(paramView);
  }
  
  public static int v(View paramView)
  {
    return a.v(paramView);
  }
  
  public static void w(View paramView)
  {
    a.w(paramView);
  }
  
  public static boolean x(View paramView)
  {
    return a.z(paramView);
  }
  
  public static void y(View paramView)
  {
    a.A(paramView);
  }
  
  public static boolean z(View paramView)
  {
    return a.o(paramView);
  }
  
  static class a
    implements ai.k
  {
    WeakHashMap<View, az> a = null;
    
    private boolean a(ae paramae, int paramInt)
    {
      boolean bool = true;
      int i = paramae.computeHorizontalScrollOffset();
      int j = paramae.computeHorizontalScrollRange() - paramae.computeHorizontalScrollExtent();
      if (j == 0) {
        bool = false;
      }
      do
      {
        do
        {
          return bool;
          if (paramInt >= 0) {
            break;
          }
        } while (i > 0);
        return false;
      } while (i < j - 1);
      return false;
    }
    
    private boolean b(ae paramae, int paramInt)
    {
      boolean bool = true;
      int i = paramae.computeVerticalScrollOffset();
      int j = paramae.computeVerticalScrollRange() - paramae.computeVerticalScrollExtent();
      if (j == 0) {
        bool = false;
      }
      do
      {
        do
        {
          return bool;
          if (paramInt >= 0) {
            break;
          }
        } while (i > 0);
        return false;
      } while (i < j - 1);
      return false;
    }
    
    public void A(View paramView) {}
    
    public boolean B(View paramView)
    {
      return false;
    }
    
    public boolean C(View paramView)
    {
      if ((paramView instanceof x)) {
        return ((x)paramView).isNestedScrollingEnabled();
      }
      return false;
    }
    
    public void D(View paramView)
    {
      if ((paramView instanceof x)) {
        ((x)paramView).stopNestedScroll();
      }
    }
    
    public boolean E(View paramView)
    {
      return aj.a(paramView);
    }
    
    public float F(View paramView)
    {
      return y(paramView) + x(paramView);
    }
    
    public boolean G(View paramView)
    {
      return aj.d(paramView);
    }
    
    public int a(int paramInt1, int paramInt2)
    {
      return paramInt1 | paramInt2;
    }
    
    public int a(int paramInt1, int paramInt2, int paramInt3)
    {
      return View.resolveSize(paramInt1, paramInt2);
    }
    
    public int a(View paramView)
    {
      return 2;
    }
    
    long a()
    {
      return 10L;
    }
    
    public bg a(View paramView, bg parambg)
    {
      return parambg;
    }
    
    public void a(View paramView, float paramFloat) {}
    
    public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void a(View paramView, int paramInt, Paint paramPaint) {}
    
    public void a(View paramView, ColorStateList paramColorStateList)
    {
      aj.a(paramView, paramColorStateList);
    }
    
    public void a(View paramView, Paint paramPaint) {}
    
    public void a(View paramView, PorterDuff.Mode paramMode)
    {
      aj.a(paramView, paramMode);
    }
    
    public void a(View paramView, a parama) {}
    
    public void a(View paramView, ab paramab) {}
    
    public void a(View paramView, Runnable paramRunnable)
    {
      paramView.postDelayed(paramRunnable, a());
    }
    
    public void a(View paramView, Runnable paramRunnable, long paramLong)
    {
      paramView.postDelayed(paramRunnable, a() + paramLong);
    }
    
    public void a(View paramView, boolean paramBoolean) {}
    
    public void a(ViewGroup paramViewGroup, boolean paramBoolean) {}
    
    public boolean a(View paramView, int paramInt)
    {
      return ((paramView instanceof ae)) && (a((ae)paramView, paramInt));
    }
    
    public bg b(View paramView, bg parambg)
    {
      return parambg;
    }
    
    public void b(View paramView, float paramFloat) {}
    
    public void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void b(View paramView, boolean paramBoolean) {}
    
    public boolean b(View paramView)
    {
      return false;
    }
    
    public boolean b(View paramView, int paramInt)
    {
      return ((paramView instanceof ae)) && (b((ae)paramView, paramInt));
    }
    
    public void c(View paramView, float paramFloat) {}
    
    public void c(View paramView, int paramInt) {}
    
    public void c(View paramView, boolean paramBoolean) {}
    
    public boolean c(View paramView)
    {
      return false;
    }
    
    public void d(View paramView)
    {
      paramView.invalidate();
    }
    
    public void d(View paramView, float paramFloat) {}
    
    public int e(View paramView)
    {
      return 0;
    }
    
    public void e(View paramView, float paramFloat) {}
    
    public float f(View paramView)
    {
      return 1.0F;
    }
    
    public void f(View paramView, float paramFloat) {}
    
    public int g(View paramView)
    {
      return 0;
    }
    
    public void g(View paramView, float paramFloat) {}
    
    public int h(View paramView)
    {
      return 0;
    }
    
    public ViewParent i(View paramView)
    {
      return paramView.getParent();
    }
    
    public boolean j(View paramView)
    {
      boolean bool2 = false;
      paramView = paramView.getBackground();
      boolean bool1 = bool2;
      if (paramView != null)
      {
        bool1 = bool2;
        if (paramView.getOpacity() == -1) {
          bool1 = true;
        }
      }
      return bool1;
    }
    
    public int k(View paramView)
    {
      return paramView.getMeasuredWidth();
    }
    
    public int l(View paramView)
    {
      return 0;
    }
    
    public int m(View paramView)
    {
      return paramView.getPaddingLeft();
    }
    
    public int n(View paramView)
    {
      return paramView.getPaddingRight();
    }
    
    public boolean o(View paramView)
    {
      return true;
    }
    
    public float p(View paramView)
    {
      return 0.0F;
    }
    
    public float q(View paramView)
    {
      return 0.0F;
    }
    
    public float r(View paramView)
    {
      return 0.0F;
    }
    
    public int s(View paramView)
    {
      return aj.b(paramView);
    }
    
    public int t(View paramView)
    {
      return aj.c(paramView);
    }
    
    public az u(View paramView)
    {
      return new az(paramView);
    }
    
    public int v(View paramView)
    {
      return 0;
    }
    
    public void w(View paramView) {}
    
    public float x(View paramView)
    {
      return 0.0F;
    }
    
    public float y(View paramView)
    {
      return 0.0F;
    }
    
    public boolean z(View paramView)
    {
      return false;
    }
  }
  
  static class b
    extends ai.a
  {
    public void a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      ak.a(paramViewGroup, paramBoolean);
    }
    
    public boolean j(View paramView)
    {
      return ak.a(paramView);
    }
  }
  
  static class c
    extends ai.b
  {
    public int a(View paramView)
    {
      return al.a(paramView);
    }
  }
  
  static class d
    extends ai.c
  {
    public void A(View paramView)
    {
      am.h(paramView);
    }
    
    public int a(int paramInt1, int paramInt2)
    {
      return am.a(paramInt1, paramInt2);
    }
    
    public int a(int paramInt1, int paramInt2, int paramInt3)
    {
      return am.a(paramInt1, paramInt2, paramInt3);
    }
    
    long a()
    {
      return am.a();
    }
    
    public void a(View paramView, float paramFloat)
    {
      am.a(paramView, paramFloat);
    }
    
    public void a(View paramView, int paramInt, Paint paramPaint)
    {
      am.a(paramView, paramInt, paramPaint);
    }
    
    public void a(View paramView, Paint paramPaint)
    {
      a(paramView, g(paramView), paramPaint);
      paramView.invalidate();
    }
    
    public void b(View paramView, float paramFloat)
    {
      am.b(paramView, paramFloat);
    }
    
    public void b(View paramView, boolean paramBoolean)
    {
      am.a(paramView, paramBoolean);
    }
    
    public void c(View paramView, float paramFloat)
    {
      am.c(paramView, paramFloat);
    }
    
    public void c(View paramView, boolean paramBoolean)
    {
      am.b(paramView, paramBoolean);
    }
    
    public void d(View paramView, float paramFloat)
    {
      am.d(paramView, paramFloat);
    }
    
    public void e(View paramView, float paramFloat)
    {
      am.e(paramView, paramFloat);
    }
    
    public float f(View paramView)
    {
      return am.a(paramView);
    }
    
    public void f(View paramView, float paramFloat)
    {
      am.f(paramView, paramFloat);
    }
    
    public int g(View paramView)
    {
      return am.b(paramView);
    }
    
    public int k(View paramView)
    {
      return am.c(paramView);
    }
    
    public int l(View paramView)
    {
      return am.d(paramView);
    }
    
    public float p(View paramView)
    {
      return am.e(paramView);
    }
    
    public float q(View paramView)
    {
      return am.f(paramView);
    }
    
    public float r(View paramView)
    {
      return am.g(paramView);
    }
  }
  
  static class e
    extends ai.d
  {
    static Field b;
    static boolean c = false;
    
    public void a(View paramView, a parama)
    {
      if (parama == null) {}
      for (parama = null;; parama = parama.a())
      {
        an.a(paramView, parama);
        return;
      }
    }
    
    public void a(View paramView, boolean paramBoolean)
    {
      an.a(paramView, paramBoolean);
    }
    
    public boolean a(View paramView, int paramInt)
    {
      return an.a(paramView, paramInt);
    }
    
    /* Error */
    public boolean b(View paramView)
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_2
      //   2: getstatic 15	android/support/v4/view/ai$e:c	Z
      //   5: ifeq +5 -> 10
      //   8: iconst_0
      //   9: ireturn
      //   10: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
      //   13: ifnonnull +20 -> 33
      //   16: ldc 44
      //   18: ldc 46
      //   20: invokevirtual 52	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
      //   23: putstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
      //   26: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
      //   29: iconst_1
      //   30: invokevirtual 58	java/lang/reflect/Field:setAccessible	(Z)V
      //   33: getstatic 42	android/support/v4/view/ai$e:b	Ljava/lang/reflect/Field;
      //   36: aload_1
      //   37: invokevirtual 62	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   40: astore_1
      //   41: aload_1
      //   42: ifnull +12 -> 54
      //   45: iload_2
      //   46: ireturn
      //   47: astore_1
      //   48: iconst_1
      //   49: putstatic 15	android/support/v4/view/ai$e:c	Z
      //   52: iconst_0
      //   53: ireturn
      //   54: iconst_0
      //   55: istore_2
      //   56: goto -11 -> 45
      //   59: astore_1
      //   60: iconst_1
      //   61: putstatic 15	android/support/v4/view/ai$e:c	Z
      //   64: iconst_0
      //   65: ireturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	66	0	this	e
      //   0	66	1	paramView	View
      //   1	55	2	bool	boolean
      // Exception table:
      //   from	to	target	type
      //   16	33	47	java/lang/Throwable
      //   33	41	59	java/lang/Throwable
    }
    
    public boolean b(View paramView, int paramInt)
    {
      return an.b(paramView, paramInt);
    }
    
    public az u(View paramView)
    {
      if (a == null) {
        a = new WeakHashMap();
      }
      az localaz2 = (az)a.get(paramView);
      az localaz1 = localaz2;
      if (localaz2 == null)
      {
        localaz1 = new az(paramView);
        a.put(paramView, localaz1);
      }
      return localaz1;
    }
  }
  
  static class f
    extends ai.e
  {
    public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      ao.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void a(View paramView, Runnable paramRunnable)
    {
      ao.a(paramView, paramRunnable);
    }
    
    public void a(View paramView, Runnable paramRunnable, long paramLong)
    {
      ao.a(paramView, paramRunnable, paramLong);
    }
    
    public void c(View paramView, int paramInt)
    {
      int i = paramInt;
      if (paramInt == 4) {
        i = 2;
      }
      ao.a(paramView, i);
    }
    
    public boolean c(View paramView)
    {
      return ao.a(paramView);
    }
    
    public void d(View paramView)
    {
      ao.b(paramView);
    }
    
    public int e(View paramView)
    {
      return ao.c(paramView);
    }
    
    public ViewParent i(View paramView)
    {
      return ao.d(paramView);
    }
    
    public boolean o(View paramView)
    {
      return ao.i(paramView);
    }
    
    public int s(View paramView)
    {
      return ao.e(paramView);
    }
    
    public int t(View paramView)
    {
      return ao.f(paramView);
    }
    
    public void w(View paramView)
    {
      ao.g(paramView);
    }
    
    public boolean z(View paramView)
    {
      return ao.h(paramView);
    }
  }
  
  static class g
    extends ai.f
  {
    public boolean B(View paramView)
    {
      return ap.e(paramView);
    }
    
    public void a(View paramView, Paint paramPaint)
    {
      ap.a(paramView, paramPaint);
    }
    
    public void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      ap.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public int h(View paramView)
    {
      return ap.a(paramView);
    }
    
    public int m(View paramView)
    {
      return ap.b(paramView);
    }
    
    public int n(View paramView)
    {
      return ap.c(paramView);
    }
    
    public int v(View paramView)
    {
      return ap.d(paramView);
    }
  }
  
  static class h
    extends ai.g
  {}
  
  static class i
    extends ai.h
  {
    public boolean E(View paramView)
    {
      return aq.a(paramView);
    }
    
    public boolean G(View paramView)
    {
      return aq.b(paramView);
    }
    
    public void c(View paramView, int paramInt)
    {
      ao.a(paramView, paramInt);
    }
  }
  
  static class j
    extends ai.i
  {
    public boolean C(View paramView)
    {
      return ar.d(paramView);
    }
    
    public void D(View paramView)
    {
      ar.e(paramView);
    }
    
    public float F(View paramView)
    {
      return ar.f(paramView);
    }
    
    public bg a(View paramView, bg parambg)
    {
      return ar.a(paramView, parambg);
    }
    
    public void a(View paramView, ColorStateList paramColorStateList)
    {
      ar.a(paramView, paramColorStateList);
    }
    
    public void a(View paramView, PorterDuff.Mode paramMode)
    {
      ar.a(paramView, paramMode);
    }
    
    public void a(View paramView, ab paramab)
    {
      ar.a(paramView, paramab);
    }
    
    public bg b(View paramView, bg parambg)
    {
      return ar.b(paramView, parambg);
    }
    
    public void g(View paramView, float paramFloat)
    {
      ar.a(paramView, paramFloat);
    }
    
    public void w(View paramView)
    {
      ar.a(paramView);
    }
    
    public float x(View paramView)
    {
      return ar.b(paramView);
    }
    
    public float y(View paramView)
    {
      return ar.c(paramView);
    }
  }
  
  static abstract interface k
  {
    public abstract void A(View paramView);
    
    public abstract boolean B(View paramView);
    
    public abstract boolean C(View paramView);
    
    public abstract void D(View paramView);
    
    public abstract boolean E(View paramView);
    
    public abstract float F(View paramView);
    
    public abstract boolean G(View paramView);
    
    public abstract int a(int paramInt1, int paramInt2);
    
    public abstract int a(int paramInt1, int paramInt2, int paramInt3);
    
    public abstract int a(View paramView);
    
    public abstract bg a(View paramView, bg parambg);
    
    public abstract void a(View paramView, float paramFloat);
    
    public abstract void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void a(View paramView, int paramInt, Paint paramPaint);
    
    public abstract void a(View paramView, ColorStateList paramColorStateList);
    
    public abstract void a(View paramView, Paint paramPaint);
    
    public abstract void a(View paramView, PorterDuff.Mode paramMode);
    
    public abstract void a(View paramView, a parama);
    
    public abstract void a(View paramView, ab paramab);
    
    public abstract void a(View paramView, Runnable paramRunnable);
    
    public abstract void a(View paramView, Runnable paramRunnable, long paramLong);
    
    public abstract void a(View paramView, boolean paramBoolean);
    
    public abstract void a(ViewGroup paramViewGroup, boolean paramBoolean);
    
    public abstract boolean a(View paramView, int paramInt);
    
    public abstract bg b(View paramView, bg parambg);
    
    public abstract void b(View paramView, float paramFloat);
    
    public abstract void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void b(View paramView, boolean paramBoolean);
    
    public abstract boolean b(View paramView);
    
    public abstract boolean b(View paramView, int paramInt);
    
    public abstract void c(View paramView, float paramFloat);
    
    public abstract void c(View paramView, int paramInt);
    
    public abstract void c(View paramView, boolean paramBoolean);
    
    public abstract boolean c(View paramView);
    
    public abstract void d(View paramView);
    
    public abstract void d(View paramView, float paramFloat);
    
    public abstract int e(View paramView);
    
    public abstract void e(View paramView, float paramFloat);
    
    public abstract float f(View paramView);
    
    public abstract void f(View paramView, float paramFloat);
    
    public abstract int g(View paramView);
    
    public abstract void g(View paramView, float paramFloat);
    
    public abstract int h(View paramView);
    
    public abstract ViewParent i(View paramView);
    
    public abstract boolean j(View paramView);
    
    public abstract int k(View paramView);
    
    public abstract int l(View paramView);
    
    public abstract int m(View paramView);
    
    public abstract int n(View paramView);
    
    public abstract boolean o(View paramView);
    
    public abstract float p(View paramView);
    
    public abstract float q(View paramView);
    
    public abstract float r(View paramView);
    
    public abstract int s(View paramView);
    
    public abstract int t(View paramView);
    
    public abstract az u(View paramView);
    
    public abstract int v(View paramView);
    
    public abstract void w(View paramView);
    
    public abstract float x(View paramView);
    
    public abstract boolean z(View paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */