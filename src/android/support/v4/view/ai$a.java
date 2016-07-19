package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.WeakHashMap;

class ai$a
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

/* Location:
 * Qualified Name:     android.support.v4.view.ai.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */