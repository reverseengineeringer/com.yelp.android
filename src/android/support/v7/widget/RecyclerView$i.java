package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.ai;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.a;
import com.yelp.android.h.c;
import com.yelp.android.h.c.k;
import com.yelp.android.h.c.l;
import com.yelp.android.h.m;
import java.util.ArrayList;

public abstract class RecyclerView$i
{
  private boolean a = false;
  private boolean b = false;
  e q;
  RecyclerView r;
  RecyclerView.q s;
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int j = 1073741824;
    int i = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = j;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      continue;
      paramInt2 = j;
      paramInt1 = paramInt3;
      if (paramInt3 < 0) {
        if (paramInt3 == -1)
        {
          paramInt1 = i;
          paramInt2 = j;
        }
        else if (paramInt3 == -2)
        {
          paramInt2 = Integer.MIN_VALUE;
          paramInt1 = i;
        }
        else
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
      }
    }
  }
  
  private void a(int paramInt, View paramView)
  {
    q.d(paramInt);
  }
  
  private void a(RecyclerView.n paramn, int paramInt, View paramView)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    if (localu.c()) {
      return;
    }
    if ((localu.l()) && (!localu.p()) && (!localu.n()) && (!RecyclerView.f(r).b()))
    {
      d(paramInt);
      paramn.b(localu);
      return;
    }
    e(paramInt);
    paramn.c(paramView);
  }
  
  private void a(RecyclerView.q paramq)
  {
    if (s == paramq) {
      s = null;
    }
  }
  
  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    RecyclerView.LayoutParams localLayoutParams;
    if ((paramBoolean) || (localu.p()))
    {
      r.e.b(paramView);
      localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      if ((!localu.i()) && (!localu.g())) {
        break label126;
      }
      if (!localu.g()) {
        break label118;
      }
      localu.h();
      label67:
      q.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    for (;;)
    {
      if (d)
      {
        a.invalidate();
        d = false;
      }
      return;
      r.e.a(paramView);
      break;
      label118:
      localu.j();
      break label67;
      label126:
      if (paramView.getParent() == r)
      {
        int j = q.b(paramView);
        int i = paramInt;
        if (paramInt == -1) {
          i = q.b();
        }
        if (j == -1) {
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + r.indexOfChild(paramView));
        }
        if (j != i) {
          RecyclerView.d(r).a(j, i);
        }
      }
      else
      {
        q.a(paramView, paramInt, false);
        c = true;
        if ((s != null) && (s.c())) {
          s.b(paramView);
        }
      }
    }
  }
  
  public void A()
  {
    a = true;
  }
  
  public int a(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int a(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if ((r == null) || (RecyclerView.f(r) == null)) {}
    while (!e()) {
      return 1;
    }
    return RecyclerView.f(r).a();
  }
  
  public abstract RecyclerView.LayoutParams a();
  
  public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
      return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new RecyclerView.LayoutParams(paramLayoutParams);
  }
  
  public View a(View paramView, int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    View localView = f(paramInt1);
    if (localView == null) {
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
    }
    e(paramInt1);
    c(localView, paramInt2);
  }
  
  public void a(int paramInt, RecyclerView.n paramn)
  {
    View localView = f(paramInt);
    d(paramInt);
    paramn.a(localView);
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(RecyclerView.a parama1, RecyclerView.a parama2) {}
  
  public void a(RecyclerView.n paramn)
  {
    int i = r() - 1;
    while (i >= 0)
    {
      a(paramn, i, f(i));
      i -= 1;
    }
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2)
  {
    RecyclerView.b(r, paramInt1, paramInt2);
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, c paramc)
  {
    int i;
    if (e())
    {
      i = d(paramView);
      if (!d()) {
        break label51;
      }
    }
    label51:
    for (int j = d(paramView);; j = 0)
    {
      paramc.c(c.l.a(i, 1, j, 1, false, false));
      return;
      i = 0;
      break;
    }
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    paramn = a.a(paramAccessibilityEvent);
    if ((r == null) || (paramn == null)) {
      return;
    }
    boolean bool1 = bool2;
    if (!ai.b(r, 1))
    {
      bool1 = bool2;
      if (!ai.b(r, -1))
      {
        bool1 = bool2;
        if (!ai.a(r, -1)) {
          if (!ai.a(r, 1)) {
            break label111;
          }
        }
      }
    }
    label111:
    for (bool1 = bool2;; bool1 = false)
    {
      paramn.a(bool1);
      if (RecyclerView.f(r) == null) {
        break;
      }
      paramn.a(RecyclerView.f(r).a());
      return;
    }
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, c paramc)
  {
    if ((ai.b(r, -1)) || (ai.a(r, -1)))
    {
      paramc.a(8192);
      paramc.i(true);
    }
    if ((ai.b(r, 1)) || (ai.a(r, 1)))
    {
      paramc.a(4096);
      paramc.i(true);
    }
    paramc.b(c.k.a(a(paramn, paramr), b(paramn, paramr), e(paramn, paramr), d(paramn, paramr)));
  }
  
  public void a(RecyclerView paramRecyclerView) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    c(paramRecyclerView, paramInt1, paramInt2);
  }
  
  public void a(RecyclerView paramRecyclerView, RecyclerView.n paramn)
  {
    e(paramRecyclerView);
  }
  
  public void a(View paramView)
  {
    a(paramView, -1);
  }
  
  public void a(View paramView, int paramInt)
  {
    a(paramView, paramInt, true);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    Rect localRect = r.f(paramView);
    int i = left;
    int j = right;
    int k = top;
    int m = bottom;
    paramView.measure(a(s(), i + j + paramInt1 + (u() + w() + leftMargin + rightMargin), width, d()), a(t(), m + k + paramInt2 + (v() + x() + topMargin + bottomMargin), height, e()));
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = getLayoutParamsb;
    paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
  }
  
  public void a(View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    if (localu.p()) {
      r.e.b(paramView);
    }
    for (;;)
    {
      q.a(paramView, paramInt, paramLayoutParams, localu.p());
      return;
      r.e.a(paramView);
    }
  }
  
  public void a(View paramView, Rect paramRect)
  {
    if (r == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    paramRect.set(r.f(paramView));
  }
  
  public void a(View paramView, RecyclerView.n paramn)
  {
    c(paramView);
    paramn.a(paramView);
  }
  
  void a(View paramView, c paramc)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    if ((localu != null) && (!localu.p()) && (!q.c(a))) {
      a(r.a, r.e, paramView, paramc);
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    a(r.a, r.e, paramAccessibilityEvent);
  }
  
  void a(c paramc)
  {
    a(r.a, r.e, paramc);
  }
  
  public void a(Runnable paramRunnable)
  {
    if (r != null) {
      ai.a(r, paramRunnable);
    }
  }
  
  public void a(String paramString)
  {
    if (r != null) {
      r.a(paramString);
    }
  }
  
  boolean a(int paramInt, Bundle paramBundle)
  {
    return a(r.a, r.e, paramInt, paramBundle);
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams != null;
  }
  
  public boolean a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt, Bundle paramBundle)
  {
    if (r == null) {}
    int i;
    do
    {
      return false;
      switch (paramInt)
      {
      default: 
        paramInt = 0;
        i = 0;
      }
    } while ((i == 0) && (paramInt == 0));
    r.scrollBy(paramInt, i);
    return true;
    if (ai.b(r, -1)) {}
    for (paramInt = -(t() - v() - x());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (ai.a(r, -1))
      {
        j = -(s() - u() - w());
        i = paramInt;
        paramInt = j;
        break;
        if (!ai.b(r, 1)) {
          break label207;
        }
      }
      label207:
      for (paramInt = t() - v() - x();; paramInt = 0)
      {
        i = paramInt;
        if (ai.a(r, 1))
        {
          j = s();
          int k = u();
          int m = w();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
  
  public boolean a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, int paramInt, Bundle paramBundle)
  {
    return false;
  }
  
  public boolean a(RecyclerView paramRecyclerView, RecyclerView.r paramr, View paramView1, View paramView2)
  {
    return a(paramRecyclerView, paramView1, paramView2);
  }
  
  public boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i2 = u();
    int m = v();
    int i3 = s() - w();
    int i1 = t();
    int i6 = x();
    int i4 = paramView.getLeft() + left;
    int n = paramView.getTop() + top;
    int i5 = i4 + paramRect.width();
    int i7 = paramRect.height();
    int i = Math.min(0, i4 - i2);
    int j = Math.min(0, n - m);
    int k = Math.max(0, i5 - i3);
    i1 = Math.max(0, n + i7 - (i1 - i6));
    if (p() == 1) {
      if (k != 0)
      {
        i = k;
        if (j == 0) {
          break label207;
        }
        label144:
        if ((i == 0) && (j == 0)) {
          break label233;
        }
        if (!paramBoolean) {
          break label222;
        }
        paramRecyclerView.scrollBy(i, j);
      }
    }
    for (;;)
    {
      return true;
      i = Math.max(i, i5 - i3);
      break;
      if (i != 0) {
        break;
      }
      for (;;)
      {
        i = Math.min(i4 - i2, k);
      }
      label207:
      j = Math.min(n - m, i1);
      break label144;
      label222:
      paramRecyclerView.a(i, j);
    }
    label233:
    return false;
  }
  
  @Deprecated
  public boolean a(RecyclerView paramRecyclerView, View paramView1, View paramView2)
  {
    return (o()) || (paramRecyclerView.j());
  }
  
  public boolean a(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    return a(r.a, r.e, paramView, paramInt, paramBundle);
  }
  
  public int b(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int b(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if ((r == null) || (RecyclerView.f(r) == null)) {}
    while (!d()) {
      return 1;
    }
    return RecyclerView.f(r).a();
  }
  
  public int b(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public View b(int paramInt)
  {
    int j = r();
    int i = 0;
    if (i < j)
    {
      View localView = f(i);
      RecyclerView.u localu = RecyclerView.b(localView);
      if (localu == null) {}
      while ((localu.d() != paramInt) || (localu.c()) || ((!r.e.a()) && (localu.p())))
      {
        i += 1;
        break;
      }
      return localView;
    }
    return null;
  }
  
  void b(RecyclerView.n paramn)
  {
    int j = paramn.d();
    int i = j - 1;
    if (i >= 0)
    {
      View localView = paramn.e(i);
      RecyclerView.u localu = RecyclerView.b(localView);
      if (localu.c()) {}
      for (;;)
      {
        i -= 1;
        break;
        localu.a(false);
        if (localu.q()) {
          r.removeDetachedView(localView, false);
        }
        if (r.d != null) {
          r.d.c(localu);
        }
        localu.a(true);
        paramn.b(localView);
      }
    }
    paramn.e();
    if (j > 0) {
      r.invalidate();
    }
  }
  
  void b(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      r = null;
      q = null;
      return;
    }
    r = paramRecyclerView;
    q = c;
  }
  
  public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  void b(RecyclerView paramRecyclerView, RecyclerView.n paramn)
  {
    b = false;
    a(paramRecyclerView, paramn);
  }
  
  public void b(View paramView)
  {
    b(paramView, -1);
  }
  
  public void b(View paramView, int paramInt)
  {
    a(paramView, paramInt, false);
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(Runnable paramRunnable)
  {
    if (r != null) {
      return r.removeCallbacks(paramRunnable);
    }
    return false;
  }
  
  public int c(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public Parcelable c()
  {
    return null;
  }
  
  public void c(int paramInt) {}
  
  public void c(RecyclerView.n paramn)
  {
    int i = r() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.b(f(i)).c()) {
        a(i, paramn);
      }
      i -= 1;
    }
  }
  
  public void c(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  void c(RecyclerView paramRecyclerView)
  {
    b = true;
    d(paramRecyclerView);
  }
  
  public void c(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void c(View paramView)
  {
    q.a(paramView);
  }
  
  public void c(View paramView, int paramInt)
  {
    a(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
  }
  
  public int d(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int d(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int d(View paramView)
  {
    return ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e();
  }
  
  public View d(View paramView, int paramInt)
  {
    return null;
  }
  
  public void d(int paramInt)
  {
    if (f(paramInt) != null) {
      q.a(paramInt);
    }
  }
  
  public void d(RecyclerView paramRecyclerView) {}
  
  public boolean d()
  {
    return false;
  }
  
  public int e(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int e(View paramView)
  {
    Rect localRect = getLayoutParamsb;
    int i = paramView.getMeasuredWidth();
    int j = left;
    return right + (i + j);
  }
  
  public void e(int paramInt)
  {
    a(paramInt, f(paramInt));
  }
  
  @Deprecated
  public void e(RecyclerView paramRecyclerView) {}
  
  public boolean e()
  {
    return false;
  }
  
  public boolean e(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return false;
  }
  
  public int f(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int f(View paramView)
  {
    Rect localRect = getLayoutParamsb;
    int i = paramView.getMeasuredHeight();
    int j = top;
    return bottom + (i + j);
  }
  
  public View f(int paramInt)
  {
    if (q != null) {
      return q.b(paramInt);
    }
    return null;
  }
  
  public int g(RecyclerView.r paramr)
  {
    return 0;
  }
  
  public int g(View paramView)
  {
    return paramView.getLeft() - m(paramView);
  }
  
  public void g(int paramInt)
  {
    if (r != null) {
      r.b(paramInt);
    }
  }
  
  public int h(View paramView)
  {
    return paramView.getTop() - k(paramView);
  }
  
  public void h(int paramInt)
  {
    if (r != null) {
      r.a(paramInt);
    }
  }
  
  public int i(View paramView)
  {
    return paramView.getRight() + n(paramView);
  }
  
  public void i(int paramInt) {}
  
  public int j(View paramView)
  {
    return paramView.getBottom() + l(paramView);
  }
  
  public int k(View paramView)
  {
    return getLayoutParamsb.top;
  }
  
  public int l(View paramView)
  {
    return getLayoutParamsb.bottom;
  }
  
  public void l()
  {
    if (r != null) {
      r.requestLayout();
    }
  }
  
  public int m(View paramView)
  {
    return getLayoutParamsb.left;
  }
  
  public boolean m()
  {
    return b;
  }
  
  public int n(View paramView)
  {
    return getLayoutParamsb.right;
  }
  
  public boolean n()
  {
    return (r != null) && (RecyclerView.o(r));
  }
  
  public boolean o()
  {
    return (s != null) && (s.c());
  }
  
  public int p()
  {
    return ai.h(r);
  }
  
  public int q()
  {
    return -1;
  }
  
  public int r()
  {
    if (q != null) {
      return q.b();
    }
    return 0;
  }
  
  public int s()
  {
    if (r != null) {
      return r.getWidth();
    }
    return 0;
  }
  
  public int t()
  {
    if (r != null) {
      return r.getHeight();
    }
    return 0;
  }
  
  public int u()
  {
    if (r != null) {
      return r.getPaddingLeft();
    }
    return 0;
  }
  
  public int v()
  {
    if (r != null) {
      return r.getPaddingTop();
    }
    return 0;
  }
  
  public int w()
  {
    if (r != null) {
      return r.getPaddingRight();
    }
    return 0;
  }
  
  public int x()
  {
    if (r != null) {
      return r.getPaddingBottom();
    }
    return 0;
  }
  
  public View y()
  {
    if (r == null) {}
    View localView;
    do
    {
      return null;
      localView = r.getFocusedChild();
    } while ((localView == null) || (q.c(localView)));
    return localView;
  }
  
  void z()
  {
    if (s != null) {
      s.a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */