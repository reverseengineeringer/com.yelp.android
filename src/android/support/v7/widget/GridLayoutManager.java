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
import com.yelp.android.h.c;
import com.yelp.android.h.c.l;
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
  a h;
  final Rect i;
  
  private void B()
  {
    f.clear();
    g.clear();
  }
  
  private void C()
  {
    int k = r();
    int j = 0;
    while (j < k)
    {
      LayoutParams localLayoutParams = (LayoutParams)f(j).getLayoutParams();
      int m = localLayoutParams.e();
      f.put(m, localLayoutParams.b());
      g.put(m, localLayoutParams.a());
      j += 1;
    }
  }
  
  private void D()
  {
    if (f() == 1) {}
    for (int j = s() - w() - u();; j = t() - x() - v())
    {
      j(j);
      return;
    }
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
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
  
  private int a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt)
  {
    if (!paramr.a()) {
      return h.c(paramInt, c);
    }
    int j = paramn.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + paramInt);
      return 0;
    }
    return h.c(j, c);
  }
  
  private void a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j;
    int k;
    int m;
    label43:
    LayoutParams localLayoutParams;
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
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      LayoutParams.a(localLayoutParams, c(paramn, paramr, d(localView)));
      if ((m != -1) || (LayoutParams.b(localLayoutParams) <= 1)) {
        break label159;
      }
      LayoutParams.b(localLayoutParams, paramInt2 - (LayoutParams.b(localLayoutParams) - 1));
    }
    for (;;)
    {
      paramInt2 += LayoutParams.b(localLayoutParams) * m;
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
      LayoutParams.b(localLayoutParams, paramInt2);
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a(paramView, i);
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    int j;
    if (!paramBoolean)
    {
      j = paramInt1;
      if (this.j != 1) {}
    }
    else
    {
      j = a(paramInt1, leftMargin + i.left, rightMargin + i.right);
    }
    if (!paramBoolean)
    {
      paramInt1 = paramInt2;
      if (this.j != 0) {}
    }
    else
    {
      paramInt1 = a(paramInt2, topMargin + i.top, bottomMargin + i.bottom);
    }
    paramView.measure(j, paramInt1);
  }
  
  private int b(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt)
  {
    if (!paramr.a()) {
      j = h.a(paramInt, c);
    }
    int k;
    do
    {
      return j;
      k = g.get(paramInt, -1);
      j = k;
    } while (k != -1);
    int j = paramn.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 0;
    }
    return h.a(j, c);
  }
  
  private void b(RecyclerView.n paramn, RecyclerView.r paramr, LinearLayoutManager.a parama)
  {
    for (int j = b(paramn, paramr, a); (j > 0) && (a > 0); j = b(paramn, paramr, a)) {
      a -= 1;
    }
  }
  
  private int c(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt)
  {
    if (!paramr.a()) {
      j = h.a(paramInt);
    }
    int k;
    do
    {
      return j;
      k = f.get(paramInt, -1);
      j = k;
    } while (k != -1);
    int j = paramn.b(paramInt);
    if (j == -1)
    {
      Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + paramInt);
      return 1;
    }
    return h.a(j);
  }
  
  private void j(int paramInt)
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
  
  private int k(int paramInt)
  {
    if (paramInt < 0) {
      return a;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  public int a(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (j == 0) {
      return c;
    }
    if (paramr.e() < 1) {
      return 0;
    }
    return a(paramn, paramr, paramr.e() - 1);
  }
  
  public RecyclerView.LayoutParams a()
  {
    return new LayoutParams(-2, -2);
  }
  
  public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  View a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject2 = null;
    h();
    int k = this.k.c();
    int m = this.k.d();
    int j;
    Object localObject1;
    label37:
    Object localObject3;
    if (paramInt2 > paramInt1)
    {
      j = 1;
      localObject1 = null;
      if (paramInt1 == paramInt2) {
        break label197;
      }
      localObject3 = f(paramInt1);
      int n = d((View)localObject3);
      if ((n < 0) || (n >= paramInt3)) {
        break label216;
      }
      if (b(paramn, paramr, n) == 0) {
        break label119;
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
      break label37;
      j = -1;
      break;
      label119:
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
            break label216;
          }
          localObject2 = localObject1;
          localObject1 = localObject3;
          continue;
          label197:
          if (localObject2 == null) {
            break label209;
          }
        }
        for (;;)
        {
          localObject4 = localObject2;
          return (View)localObject4;
          label209:
          localObject2 = localObject1;
        }
      }
      label216:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  void a(RecyclerView.n paramn, RecyclerView.r paramr, LinearLayoutManager.a parama)
  {
    super.a(paramn, paramr, parama);
    D();
    if ((paramr.e() > 0) && (!paramr.a())) {
      b(paramn, paramr, parama);
    }
    if ((e == null) || (e.length != c)) {
      e = new View[c];
    }
  }
  
  void a(RecyclerView.n paramn, RecyclerView.r paramr, LinearLayoutManager.c paramc, LinearLayoutManager.b paramb)
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
        j = b(paramn, paramr, d) + c(paramn, paramr, d);
        k = n;
        i1 = m;
      }
    }
    for (;;)
    {
      if ((i1 < c) && (paramc.a(paramr)) && (j > 0))
      {
        n = d;
        m = c(paramn, paramr, n);
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
        localView = paramc.a(paramn);
      } while (localView == null);
      k += m;
      e[i1] = localView;
      i1 += 1;
    }
    a(paramn, paramr, i1, k, bool);
    int k = 0;
    int j = 0;
    if (k < i1)
    {
      paramn = e[k];
      if (k == null) {
        if (bool)
        {
          b(paramn);
          label290:
          paramr = (LayoutParams)paramn.getLayoutParams();
          m = View.MeasureSpec.makeMeasureSpec(d[(LayoutParams.a(paramr) + LayoutParams.b(paramr))] - d[LayoutParams.a(paramr)], 1073741824);
          if (this.j != 1) {
            break label414;
          }
          a(paramn, m, k(height), false);
          label353:
          m = this.k.c(paramn);
          if (m <= j) {
            break label881;
          }
          j = m;
        }
      }
    }
    label414:
    label538:
    label619:
    label836:
    label872:
    label881:
    for (;;)
    {
      k += 1;
      break;
      b(paramn, 0);
      break label290;
      if (bool)
      {
        a(paramn);
        break label290;
      }
      a(paramn, 0);
      break label290;
      a(paramn, k(width), m, false);
      break label353;
      m = k(j);
      k = 0;
      if (k < i1)
      {
        paramn = e[k];
        if (this.k.c(paramn) != j)
        {
          paramr = (LayoutParams)paramn.getLayoutParams();
          n = View.MeasureSpec.makeMeasureSpec(d[(LayoutParams.a(paramr) + LayoutParams.b(paramr))] - d[LayoutParams.a(paramr)], 1073741824);
          if (this.j != 1) {
            break label538;
          }
          a(paramn, n, m, true);
        }
        for (;;)
        {
          k += 1;
          break;
          a(paramn, m, n, true);
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
            break label872;
          }
          paramn = e[m];
          paramr = (LayoutParams)paramn.getLayoutParams();
          if (this.j != 1) {
            break label836;
          }
          j = u();
          j = d[LayoutParams.a(paramr)] + j;
          k = this.k.d(paramn) + j;
        }
      }
      for (;;)
      {
        a(paramn, j + leftMargin, i2 + topMargin, k - rightMargin, n - bottomMargin);
        if ((paramr.c()) || (paramr.d())) {
          c = true;
        }
        d |= paramn.isFocusable();
        m += 1;
        break label619;
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
        n = v();
        i2 = d[LayoutParams.a(paramr)] + n;
        n = this.k.d(paramn) + i2;
      }
      Arrays.fill(e, null);
      return;
    }
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, c paramc)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof LayoutParams))
    {
      super.a(paramView, paramc);
      return;
    }
    paramView = (LayoutParams)localLayoutParams;
    int j = a(paramn, paramr, paramView.e());
    if (this.j == 0)
    {
      k = paramView.a();
      m = paramView.b();
      if ((c > 1) && (paramView.b() == c)) {}
      for (bool = true;; bool = false)
      {
        paramc.c(c.l.a(k, m, j, 1, bool, false));
        return;
      }
    }
    int k = paramView.a();
    int m = paramView.b();
    if ((c > 1) && (paramView.b() == c)) {}
    for (boolean bool = true;; bool = false)
    {
      paramc.c(c.l.a(j, 1, k, m, bool, false));
      return;
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
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    h.a();
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public int b(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (j == 1) {
      return c;
    }
    if (paramr.e() < 1) {
      return 0;
    }
    return a(paramn, paramr, paramr.e() - 1);
  }
  
  public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    h.a();
  }
  
  public boolean b()
  {
    return (o == null) && (!b);
  }
  
  public void c(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (paramr.a()) {
      C();
    }
    super.c(paramn, paramr);
    B();
    if (!paramr.a()) {
      b = false;
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    private int e = -1;
    private int f = 0;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public int a()
    {
      return e;
    }
    
    public int b()
    {
      return f;
    }
  }
  
  public static abstract class a
  {
    final SparseIntArray a;
    private boolean b;
    
    public abstract int a(int paramInt);
    
    int a(int paramInt1, int paramInt2)
    {
      int i;
      if (!b) {
        i = b(paramInt1, paramInt2);
      }
      int j;
      do
      {
        return i;
        j = a.get(paramInt1, -1);
        i = j;
      } while (j != -1);
      paramInt2 = b(paramInt1, paramInt2);
      a.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    public void a()
    {
      a.clear();
    }
    
    int b(int paramInt)
    {
      int i = 0;
      int j = a.size() - 1;
      while (i <= j)
      {
        int k = i + j >>> 1;
        if (a.keyAt(k) < paramInt) {
          i = k + 1;
        } else {
          j = k - 1;
        }
      }
      paramInt = i - 1;
      if ((paramInt >= 0) && (paramInt < a.size())) {
        return a.keyAt(paramInt);
      }
      return -1;
    }
    
    public int b(int paramInt1, int paramInt2)
    {
      int n = a(paramInt1);
      if (n == paramInt2) {
        return 0;
      }
      int j;
      int i;
      if ((b) && (a.size() > 0))
      {
        j = b(paramInt1);
        if (j >= 0)
        {
          i = a.get(j) + a(j);
          j += 1;
        }
      }
      for (;;)
      {
        if (j < paramInt1)
        {
          int k = a(j);
          int m = i + k;
          if (m == paramInt2) {
            i = 0;
          }
          for (;;)
          {
            j += 1;
            break;
            i = k;
            if (m <= paramInt2) {
              i = m;
            }
          }
        }
        if (i + n > paramInt2) {
          break;
        }
        return i;
        j = 0;
        i = 0;
      }
    }
    
    public int c(int paramInt1, int paramInt2)
    {
      int n = a(paramInt1);
      int k = 0;
      int i = 0;
      int j = 0;
      int m;
      if (k < paramInt1)
      {
        m = a(k);
        j += m;
        if (j == paramInt2)
        {
          j = i + 1;
          i = 0;
        }
      }
      for (;;)
      {
        m = k + 1;
        k = i;
        i = j;
        j = k;
        k = m;
        break;
        if (j > paramInt2)
        {
          j = i + 1;
          i = m;
          continue;
          paramInt1 = i;
          if (j + n > paramInt2) {
            paramInt1 = i + 1;
          }
          return paramInt1;
        }
        else
        {
          m = j;
          j = i;
          i = m;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */