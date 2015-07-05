package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.yelp.android.f.g;
import com.yelp.android.f.q;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  static final int a = View.MeasureSpec.makeMeasureSpec(0, 0);
  boolean b;
  int c;
  int[] d;
  View[] e;
  final SparseIntArray f;
  final SparseIntArray g;
  ag h;
  final Rect i;
  
  private void A()
  {
    f.clear();
    g.clear();
  }
  
  private void B()
  {
    int k = q();
    int j = 0;
    while (j < k)
    {
      GridLayoutManager.LayoutParams localLayoutParams = (GridLayoutManager.LayoutParams)e(j).getLayoutParams();
      int m = localLayoutParams.e();
      f.put(m, localLayoutParams.b());
      g.put(m, localLayoutParams.a());
      j += 1;
    }
  }
  
  private void C()
  {
    if (f() == 1) {}
    for (int j = r() - v() - t();; j = s() - w() - u())
    {
      i(j);
      return;
    }
  }
  
  private int a(bv parambv, cb paramcb, int paramInt)
  {
    if (!paramcb.a()) {
      return h.c(paramInt, c);
    }
    int j = parambv.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    }
    return h.c(j, c);
  }
  
  private void a(ai paramai)
  {
    for (int j = h.a(a, c); (j > 0) && (a > 0); j = h.a(a, c)) {
      a -= 1;
    }
  }
  
  private void a(bv parambv, cb paramcb, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j;
    int k;
    int m;
    label43:
    GridLayoutManager.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      j = 1;
      paramInt2 = 0;
      k = paramInt1;
      paramInt1 = paramInt2;
      if ((this.j != 1) || (!g())) {
        break label150;
      }
      paramInt2 = c - 1;
      m = -1;
      if (paramInt1 == k) {
        return;
      }
      View localView = e[paramInt1];
      localLayoutParams = (GridLayoutManager.LayoutParams)localView.getLayoutParams();
      GridLayoutManager.LayoutParams.a(localLayoutParams, c(parambv, paramcb, d(localView)));
      if ((m != -1) || (GridLayoutManager.LayoutParams.b(localLayoutParams) <= 1)) {
        break label159;
      }
      GridLayoutManager.LayoutParams.b(localLayoutParams, paramInt2 - (GridLayoutManager.LayoutParams.b(localLayoutParams) - 1));
    }
    for (;;)
    {
      paramInt2 += GridLayoutManager.LayoutParams.b(localLayoutParams) * m;
      paramInt1 += j;
      break label43;
      paramInt1 -= 1;
      j = -1;
      k = -1;
      break;
      label150:
      paramInt2 = 0;
      m = 1;
      break label43;
      label159:
      GridLayoutManager.LayoutParams.b(localLayoutParams, paramInt2);
    }
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int j;
    do
    {
      return paramInt1;
      j = View.MeasureSpec.getMode(paramInt1);
    } while ((j != Integer.MIN_VALUE) && (j != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, j);
  }
  
  private int b(bv parambv, cb paramcb, int paramInt)
  {
    if (!paramcb.a()) {
      j = h.a(paramInt, c);
    }
    int k;
    do
    {
      return j;
      k = g.get(paramInt, -1);
      j = k;
    } while (k != -1);
    int j = parambv.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 0;
    }
    return h.a(j, c);
  }
  
  private void b(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView, i);
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    paramView.measure(b(paramInt1, leftMargin + i.left, rightMargin + i.right), b(paramInt2, topMargin + i.top, bottomMargin + i.bottom));
  }
  
  private int c(bv parambv, cb paramcb, int paramInt)
  {
    if (!paramcb.a()) {
      j = h.a(paramInt);
    }
    int k;
    do
    {
      return j;
      k = f.get(paramInt, -1);
      j = k;
    } while (k != -1);
    int j = parambv.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 1;
    }
    return h.a(j);
  }
  
  private void i(int paramInt)
  {
    int k = 0;
    if ((d == null) || (d.length != c + 1) || (d[(d.length - 1)] != paramInt)) {
      d = new int[c + 1];
    }
    d[0] = 0;
    int n = paramInt / c;
    int i1 = paramInt % c;
    int m = 1;
    int j = 0;
    paramInt = k;
    k = m;
    if (k <= c)
    {
      paramInt += i1;
      if ((paramInt <= 0) || (c - paramInt >= i1)) {
        break label145;
      }
      paramInt -= c;
    }
    label145:
    for (m = n + 1;; m = n)
    {
      j += m;
      d[k] = j;
      k += 1;
      break;
      return;
    }
  }
  
  private int j(int paramInt)
  {
    if (paramInt < 0) {
      return a;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  public int a(bv parambv, cb paramcb)
  {
    if (j == 0) {
      return c;
    }
    if (paramcb.e() < 1) {
      return 0;
    }
    return a(parambv, paramcb, paramcb.e() - 1);
  }
  
  public RecyclerView.LayoutParams a()
  {
    return new GridLayoutManager.LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new GridLayoutManager.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new GridLayoutManager.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new GridLayoutManager.LayoutParams(paramLayoutParams);
  }
  
  View a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject2 = null;
    h();
    int k = this.k.c();
    int m = this.k.d();
    int j;
    Object localObject1;
    label36:
    Object localObject3;
    if (paramInt2 > paramInt1)
    {
      j = 1;
      localObject1 = null;
      if (paramInt1 == paramInt2) {
        break label199;
      }
      localObject3 = e(paramInt1);
      int n = d((View)localObject3);
      if ((n < 0) || (n >= paramInt3)) {
        break label218;
      }
      if (h.a(n, c) == 0) {
        break label121;
      }
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
    }
    for (;;)
    {
      paramInt1 += j;
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break label36;
      j = -1;
      break;
      label121:
      if (((RecyclerView.LayoutParams)((View)localObject3).getLayoutParams()).c())
      {
        if (localObject1 == null)
        {
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
      }
      else
      {
        Object localObject4;
        if (this.k.a((View)localObject3) < m)
        {
          localObject4 = localObject3;
          if (this.k.b((View)localObject3) >= k) {}
        }
        else
        {
          if (localObject2 != null) {
            break label218;
          }
          localObject2 = localObject1;
          localObject1 = localObject3;
          continue;
          label199:
          if (localObject2 == null) {
            break label211;
          }
        }
        for (;;)
        {
          localObject4 = localObject2;
          return (View)localObject4;
          label211:
          localObject2 = localObject1;
        }
      }
      label218:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  public void a(RecyclerView paramRecyclerView)
  {
    h.a();
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    h.a();
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    h.a();
  }
  
  void a(bv parambv, cb paramcb, ak paramak, aj paramaj)
  {
    boolean bool;
    int m;
    int n;
    int i1;
    if (e == 1)
    {
      bool = true;
      m = 0;
      n = 0;
      j = c;
      i1 = m;
      k = n;
      if (!bool)
      {
        j = b(parambv, paramcb, d) + c(parambv, paramcb, d);
        k = n;
        i1 = m;
      }
    }
    for (;;)
    {
      if ((i1 < c) && (paramak.a(paramcb)) && (j > 0))
      {
        n = d;
        m = c(parambv, paramcb, n);
        if (m > c)
        {
          throw new IllegalArgumentException("Item at position " + n + " requires " + m + " spans but GridLayoutManager has only " + c + " spans.");
          bool = false;
          break;
        }
        j -= m;
        if (j >= 0) {
          break label203;
        }
      }
      label203:
      View localView;
      do
      {
        if (i1 != 0) {
          break;
        }
        b = true;
        return;
        localView = paramak.a(parambv);
      } while (localView == null);
      k += m;
      e[i1] = localView;
      i1 += 1;
    }
    a(parambv, paramcb, i1, k, bool);
    int k = 0;
    int j = 0;
    if (k < i1)
    {
      parambv = e[k];
      if (k == null) {
        if (bool)
        {
          b(parambv);
          label290:
          paramcb = (GridLayoutManager.LayoutParams)parambv.getLayoutParams();
          m = View.MeasureSpec.makeMeasureSpec(d[(GridLayoutManager.LayoutParams.a(paramcb) + GridLayoutManager.LayoutParams.b(paramcb))] - d[GridLayoutManager.LayoutParams.a(paramcb)], 1073741824);
          if (this.j != 1) {
            break label413;
          }
          b(parambv, m, j(height));
          label352:
          m = this.k.c(parambv);
          if (m <= j) {
            break label877;
          }
          j = m;
        }
      }
    }
    label413:
    label535:
    label615:
    label832:
    label868:
    label877:
    for (;;)
    {
      k += 1;
      break;
      b(parambv, 0);
      break label290;
      if (bool)
      {
        a(parambv);
        break label290;
      }
      a(parambv, 0);
      break label290;
      b(parambv, j(width), m);
      break label352;
      m = j(j);
      k = 0;
      if (k < i1)
      {
        parambv = e[k];
        if (this.k.c(parambv) != j)
        {
          paramcb = (GridLayoutManager.LayoutParams)parambv.getLayoutParams();
          n = View.MeasureSpec.makeMeasureSpec(d[(GridLayoutManager.LayoutParams.a(paramcb) + GridLayoutManager.LayoutParams.b(paramcb))] - d[GridLayoutManager.LayoutParams.a(paramcb)], 1073741824);
          if (this.j != 1) {
            break label535;
          }
          b(parambv, n, m);
        }
        for (;;)
        {
          k += 1;
          break;
          b(parambv, m, n);
        }
      }
      a = j;
      n = 0;
      int i2;
      if (this.j == 1) {
        if (f == -1)
        {
          n = b;
          j = n - j;
          k = 0;
          m = 0;
          int i4 = 0;
          i2 = m;
          int i3 = j;
          m = i4;
          j = i2;
          i2 = i3;
          if (m >= i1) {
            break label868;
          }
          parambv = e[m];
          paramcb = (GridLayoutManager.LayoutParams)parambv.getLayoutParams();
          if (this.j != 1) {
            break label832;
          }
          j = t();
          j = d[GridLayoutManager.LayoutParams.a(paramcb)] + j;
          k = this.k.d(parambv) + j;
        }
      }
      for (;;)
      {
        a(parambv, j + leftMargin, i2 + topMargin, k - rightMargin, n - bottomMargin);
        if ((paramcb.c()) || (paramcb.d())) {
          c = true;
        }
        d |= parambv.isFocusable();
        m += 1;
        break label615;
        k = b;
        n = k + j;
        j = k;
        k = 0;
        m = 0;
        break;
        if (f == -1)
        {
          m = b;
          k = m;
          m -= j;
          j = 0;
          break;
        }
        m = b;
        k = j + m;
        j = 0;
        break;
        n = u();
        i2 = d[GridLayoutManager.LayoutParams.a(paramcb)] + n;
        n = this.k.d(parambv) + i2;
      }
      Arrays.fill(e, null);
      return;
    }
  }
  
  public void a(bv parambv, cb paramcb, View paramView, g paramg)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof GridLayoutManager.LayoutParams))
    {
      super.a(paramView, paramg);
      return;
    }
    paramView = (GridLayoutManager.LayoutParams)localLayoutParams;
    int j = a(parambv, paramcb, paramView.e());
    if (this.j == 0)
    {
      k = paramView.a();
      m = paramView.b();
      if ((c > 1) && (paramView.b() == c)) {}
      for (bool = true;; bool = false)
      {
        paramg.c(q.a(k, m, j, 1, bool, false));
        return;
      }
    }
    int k = paramView.a();
    int m = paramView.b();
    if ((c > 1) && (paramView.b() == c)) {}
    for (boolean bool = true;; bool = false)
    {
      paramg.c(q.a(j, 1, k, m, bool, false));
      return;
    }
  }
  
  void a(cb paramcb, ai paramai)
  {
    super.a(paramcb, paramai);
    C();
    if ((paramcb.e() > 0) && (!paramcb.a())) {
      a(paramai);
    }
    if ((e == null) || (e.length != c)) {
      e = new View[c];
    }
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof GridLayoutManager.LayoutParams;
  }
  
  public int b(bv parambv, cb paramcb)
  {
    if (j == 1) {
      return c;
    }
    if (paramcb.e() < 1) {
      return 0;
    }
    return a(parambv, paramcb, paramcb.e() - 1);
  }
  
  public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    h.a();
  }
  
  public boolean b()
  {
    return (o == null) && (!b);
  }
  
  public void c(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    h.a();
  }
  
  public void c(bv parambv, cb paramcb)
  {
    if (paramcb.a()) {
      B();
    }
    super.c(parambv, paramcb);
    A();
    if (!paramcb.a()) {
      b = false;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */