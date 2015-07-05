package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.WeakHashMap;

class cf
  implements co
{
  WeakHashMap<View, eh> a = null;
  
  private boolean a(by paramby, int paramInt)
  {
    boolean bool = true;
    int i = paramby.computeHorizontalScrollOffset();
    int j = paramby.computeHorizontalScrollRange() - paramby.computeHorizontalScrollExtent();
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
  
  private boolean b(by paramby, int paramInt)
  {
    boolean bool = true;
    int i = paramby.computeVerticalScrollOffset();
    int j = paramby.computeVerticalScrollRange() - paramby.computeVerticalScrollExtent();
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
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, Paint paramPaint) {}
  
  public void a(View paramView, a parama) {}
  
  public void a(View paramView, bn parambn) {}
  
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
    return ((paramView instanceof by)) && (a((by)paramView, paramInt));
  }
  
  public void b(View paramView, float paramFloat) {}
  
  public void b(View paramView, boolean paramBoolean) {}
  
  public boolean b(View paramView)
  {
    return false;
  }
  
  public boolean b(View paramView, int paramInt)
  {
    return ((paramView instanceof by)) && (b((by)paramView, paramInt));
  }
  
  public void c(View paramView, float paramFloat) {}
  
  public void c(View paramView, int paramInt) {}
  
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
  
  public float m(View paramView)
  {
    return 0.0F;
  }
  
  public float n(View paramView)
  {
    return 0.0F;
  }
  
  public float o(View paramView)
  {
    return 0.0F;
  }
  
  public int p(View paramView)
  {
    return 0;
  }
  
  public int q(View paramView)
  {
    return 0;
  }
  
  public eh r(View paramView)
  {
    return new eh(paramView);
  }
  
  public int s(View paramView)
  {
    return 0;
  }
  
  public void t(View paramView) {}
  
  public boolean u(View paramView)
  {
    return false;
  }
  
  public void v(View paramView) {}
  
  public void w(View paramView)
  {
    if ((paramView instanceof bj)) {
      ((bj)paramView).stopNestedScroll();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */