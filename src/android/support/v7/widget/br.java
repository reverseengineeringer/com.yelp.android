package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.f.a;
import com.yelp.android.f.aj;
import com.yelp.android.f.g;
import com.yelp.android.f.p;
import com.yelp.android.f.q;
import java.util.ArrayList;

public abstract class br
{
  private boolean a = false;
  private boolean b = false;
  r q;
  RecyclerView r;
  bz s;
  
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
  
  private void a(bv parambv, int paramInt, View paramView)
  {
    ce localce = RecyclerView.b(paramView);
    if (localce.c()) {
      return;
    }
    if ((localce.l()) && (!localce.p()) && (!localce.n()) && (!RecyclerView.f(r).b()))
    {
      c(paramInt);
      parambv.b(localce);
      return;
    }
    d(paramInt);
    parambv.c(paramView);
  }
  
  private void a(bz parambz)
  {
    if (s == parambz) {
      s = null;
    }
  }
  
  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    ce localce = RecyclerView.b(paramView);
    RecyclerView.LayoutParams localLayoutParams;
    if ((paramBoolean) || (localce.p()))
    {
      r.e.b(paramView);
      localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      if ((!localce.i()) && (!localce.g())) {
        break label126;
      }
      if (!localce.g()) {
        break label118;
      }
      localce.h();
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
      localce.j();
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
  
  public int a(int paramInt, bv parambv, cb paramcb)
  {
    return 0;
  }
  
  public int a(bv parambv, cb paramcb)
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
  
  public View a(View paramView, int paramInt, bv parambv, cb paramcb)
  {
    return null;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    View localView = e(paramInt1);
    if (localView == null) {
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
    }
    d(paramInt1);
    c(localView, paramInt2);
  }
  
  public void a(int paramInt, bv parambv)
  {
    View localView = e(paramInt);
    c(paramInt);
    parambv.a(localView);
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(RecyclerView paramRecyclerView) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void a(RecyclerView paramRecyclerView, bv parambv)
  {
    e(paramRecyclerView);
  }
  
  public void a(bi parambi1, bi parambi2) {}
  
  public void a(bv parambv)
  {
    int i = q() - 1;
    while (i >= 0)
    {
      a(parambv, i, e(i));
      i -= 1;
    }
  }
  
  public void a(bv parambv, cb paramcb, int paramInt1, int paramInt2)
  {
    RecyclerView.b(r, paramInt1, paramInt2);
  }
  
  public void a(bv parambv, cb paramcb, View paramView, g paramg)
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
      paramg.c(q.a(i, 1, j, 1, false, false));
      return;
      i = 0;
      break;
    }
  }
  
  public void a(bv parambv, cb paramcb, AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    parambv = a.a(paramAccessibilityEvent);
    if ((r == null) || (parambv == null)) {
      return;
    }
    boolean bool1 = bool2;
    if (!android.support.v4.view.ce.b(r, 1))
    {
      bool1 = bool2;
      if (!android.support.v4.view.ce.b(r, -1))
      {
        bool1 = bool2;
        if (!android.support.v4.view.ce.a(r, -1)) {
          if (!android.support.v4.view.ce.a(r, 1)) {
            break label111;
          }
        }
      }
    }
    label111:
    for (bool1 = bool2;; bool1 = false)
    {
      parambv.a(bool1);
      if (RecyclerView.f(r) == null) {
        break;
      }
      parambv.a(RecyclerView.f(r).a());
      return;
    }
  }
  
  public void a(bv parambv, cb paramcb, g paramg)
  {
    if ((android.support.v4.view.ce.b(r, -1)) || (android.support.v4.view.ce.a(r, -1)))
    {
      paramg.a(8192);
      paramg.i(true);
    }
    if ((android.support.v4.view.ce.b(r, 1)) || (android.support.v4.view.ce.a(r, 1)))
    {
      paramg.a(4096);
      paramg.i(true);
    }
    paramg.b(p.a(a(parambv, paramcb), b(parambv, paramcb), e(parambv, paramcb), d(parambv, paramcb)));
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
    paramView.measure(a(r(), i + j + paramInt1 + (t() + v() + leftMargin + rightMargin), width, d()), a(s(), m + k + paramInt2 + (u() + w() + topMargin + bottomMargin), height, e()));
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = getLayoutParamsb;
    paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
  }
  
  public void a(View paramView, int paramInt, RecyclerView.LayoutParams paramLayoutParams)
  {
    ce localce = RecyclerView.b(paramView);
    if (localce.p()) {
      r.e.b(paramView);
    }
    for (;;)
    {
      q.a(paramView, paramInt, paramLayoutParams, localce.p());
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
  
  public void a(View paramView, bv parambv)
  {
    c(paramView);
    parambv.a(paramView);
  }
  
  void a(View paramView, g paramg)
  {
    ce localce = RecyclerView.b(paramView);
    if ((localce != null) && (!localce.p())) {
      a(r.a, r.e, paramView, paramg);
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    a(r.a, r.e, paramAccessibilityEvent);
  }
  
  void a(g paramg)
  {
    a(r.a, r.e, paramg);
  }
  
  public void a(Runnable paramRunnable)
  {
    if (r != null) {
      android.support.v4.view.ce.a(r, paramRunnable);
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
  
  public boolean a(RecyclerView paramRecyclerView, cb paramcb, View paramView1, View paramView2)
  {
    return a(paramRecyclerView, paramView1, paramView2);
  }
  
  public boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i2 = t();
    int m = u();
    int i3 = r() - v();
    int i1 = s();
    int i6 = w();
    int i4 = paramView.getLeft() + left;
    int n = paramView.getTop() + top;
    int i5 = i4 + paramRect.width();
    int i7 = paramRect.height();
    int i = Math.min(0, i4 - i2);
    int j = Math.min(0, n - m);
    int k = Math.max(0, i5 - i3);
    i1 = Math.max(0, n + i7 - (i1 - i6));
    if (o() == 1) {
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
    return (n()) || (paramRecyclerView.i());
  }
  
  public boolean a(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean a(bv parambv, cb paramcb, int paramInt, Bundle paramBundle)
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
    if (android.support.v4.view.ce.b(r, -1)) {}
    for (paramInt = -(s() - u() - w());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (android.support.v4.view.ce.a(r, -1))
      {
        j = -(r() - t() - v());
        i = paramInt;
        paramInt = j;
        break;
        if (!android.support.v4.view.ce.b(r, 1)) {
          break label207;
        }
      }
      label207:
      for (paramInt = s() - u() - w();; paramInt = 0)
      {
        i = paramInt;
        if (android.support.v4.view.ce.a(r, 1))
        {
          j = r();
          int k = t();
          int m = v();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
  
  public boolean a(bv parambv, cb paramcb, View paramView, int paramInt, Bundle paramBundle)
  {
    return false;
  }
  
  boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    return a(r.a, r.e, paramView, paramInt, paramBundle);
  }
  
  public int b(int paramInt, bv parambv, cb paramcb)
  {
    return 0;
  }
  
  public int b(bv parambv, cb paramcb)
  {
    if ((r == null) || (RecyclerView.f(r) == null)) {}
    while (!d()) {
      return 1;
    }
    return RecyclerView.f(r).a();
  }
  
  public int b(cb paramcb)
  {
    return 0;
  }
  
  public View b(int paramInt)
  {
    int j = q();
    int i = 0;
    if (i < j)
    {
      View localView = e(i);
      ce localce = RecyclerView.b(localView);
      if (localce == null) {}
      while ((localce.d() != paramInt) || (localce.c()) || ((!r.e.a()) && (localce.p())))
      {
        i += 1;
        break;
      }
      return localView;
    }
    return null;
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
  
  void b(RecyclerView paramRecyclerView, bv parambv)
  {
    b = false;
    a(paramRecyclerView, parambv);
  }
  
  void b(bv parambv)
  {
    int j = parambv.d();
    int i = j - 1;
    if (i >= 0)
    {
      View localView = parambv.e(i);
      ce localce = RecyclerView.b(localView);
      if (localce.c()) {}
      for (;;)
      {
        i -= 1;
        break;
        if (localce.q()) {
          r.removeDetachedView(localView, false);
        }
        parambv.b(localView);
      }
    }
    parambv.e();
    if (j > 0) {
      r.invalidate();
    }
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
  
  public int c(cb paramcb)
  {
    return 0;
  }
  
  public Parcelable c()
  {
    return null;
  }
  
  public void c(int paramInt)
  {
    if (e(paramInt) != null) {
      q.a(paramInt);
    }
  }
  
  void c(RecyclerView paramRecyclerView)
  {
    b = true;
    d(paramRecyclerView);
  }
  
  public void c(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void c(bv parambv)
  {
    int i = q() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.b(e(i)).c()) {
        a(i, parambv);
      }
      i -= 1;
    }
  }
  
  public void c(bv parambv, cb paramcb)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  public void c(View paramView)
  {
    q.a(paramView);
  }
  
  public void c(View paramView, int paramInt)
  {
    a(paramView, paramInt, (RecyclerView.LayoutParams)paramView.getLayoutParams());
  }
  
  public int d(bv parambv, cb paramcb)
  {
    return 0;
  }
  
  public int d(cb paramcb)
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
    a(paramInt, e(paramInt));
  }
  
  public void d(RecyclerView paramRecyclerView) {}
  
  public boolean d()
  {
    return false;
  }
  
  public int e(cb paramcb)
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
  
  public View e(int paramInt)
  {
    if (q != null) {
      return q.b(paramInt);
    }
    return null;
  }
  
  @Deprecated
  public void e(RecyclerView paramRecyclerView) {}
  
  public boolean e()
  {
    return false;
  }
  
  public boolean e(bv parambv, cb paramcb)
  {
    return false;
  }
  
  public int f(cb paramcb)
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
  
  public void f(int paramInt)
  {
    if (r != null) {
      r.b(paramInt);
    }
  }
  
  public int g(cb paramcb)
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
      r.a(paramInt);
    }
  }
  
  public int h(View paramView)
  {
    return paramView.getTop() - k(paramView);
  }
  
  public void h(int paramInt) {}
  
  public int i(View paramView)
  {
    return paramView.getRight() + n(paramView);
  }
  
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
    return (s != null) && (s.c());
  }
  
  public int o()
  {
    return android.support.v4.view.ce.h(r);
  }
  
  public int p()
  {
    return -1;
  }
  
  public int q()
  {
    if (q != null) {
      return q.b();
    }
    return 0;
  }
  
  public int r()
  {
    if (r != null) {
      return r.getWidth();
    }
    return 0;
  }
  
  public int s()
  {
    if (r != null) {
      return r.getHeight();
    }
    return 0;
  }
  
  public int t()
  {
    if (r != null) {
      return r.getPaddingLeft();
    }
    return 0;
  }
  
  public int u()
  {
    if (r != null) {
      return r.getPaddingTop();
    }
    return 0;
  }
  
  public int v()
  {
    if (r != null) {
      return r.getPaddingRight();
    }
    return 0;
  }
  
  public int w()
  {
    if (r != null) {
      return r.getPaddingBottom();
    }
    return 0;
  }
  
  public View x()
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
  
  void y()
  {
    if (s != null) {
      s.a();
    }
  }
  
  public void z()
  {
    a = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */