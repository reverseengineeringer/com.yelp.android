package android.support.v7.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.a;
import com.yelp.android.h.m;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.i
{
  private c a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  int j;
  i k;
  boolean l = false;
  int m = -1;
  int n = Integer.MIN_VALUE;
  SavedState o = null;
  final a p = new a();
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    a(paramInt);
    a(paramBoolean);
  }
  
  private void B()
  {
    boolean bool = true;
    if ((j == 1) || (!g()))
    {
      l = c;
      return;
    }
    if (!c) {}
    for (;;)
    {
      l = bool;
      return;
      bool = false;
    }
  }
  
  private View C()
  {
    if (l) {}
    for (int i = r() - 1;; i = 0) {
      return f(i);
    }
  }
  
  private View D()
  {
    if (l) {}
    for (int i = 0;; i = r() - 1) {
      return f(i);
    }
  }
  
  private int a(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr, boolean paramBoolean)
  {
    int i = k.d() - paramInt;
    if (i > 0)
    {
      int i1 = -c(-i, paramn, paramr);
      i = i1;
      if (paramBoolean)
      {
        paramInt = k.d() - (paramInt + i1);
        i = i1;
        if (paramInt > 0)
        {
          k.a(paramInt);
          i = i1 + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l) {
      return a(r() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return a(0, r(), paramBoolean1, paramBoolean2);
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.r paramr)
  {
    int i = -1;
    int i1 = 1;
    a.h = a(paramr);
    a.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramr = a;
      h += k.g();
      paramr = D();
      localc = a;
      if (l) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        e = paramInt1;
        a.d = (d(paramr) + a.e);
        a.b = k.b(paramr);
        paramInt1 = k.b(paramr) - k.d();
        a.c = paramInt2;
        if (paramBoolean)
        {
          paramr = a;
          c -= paramInt1;
        }
        a.g = paramInt1;
        return;
      }
    }
    paramr = C();
    c localc = a;
    h += k.c();
    localc = a;
    if (l) {}
    for (paramInt1 = i1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.d = (d(paramr) + a.e);
      a.b = k.a(paramr);
      paramInt1 = -k.a(paramr) + k.c();
      break;
    }
  }
  
  private void a(a parama)
  {
    b(a, b);
  }
  
  private void a(RecyclerView.n paramn, int paramInt)
  {
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int i1 = r();
      int i;
      View localView;
      if (l)
      {
        i = i1 - 1;
        while (i >= 0)
        {
          localView = f(i);
          if (k.b(localView) > paramInt)
          {
            a(paramn, i1 - 1, i);
            return;
          }
          i -= 1;
        }
      }
      else
      {
        i = 0;
        while (i < i1)
        {
          localView = f(i);
          if (k.b(localView) > paramInt)
          {
            a(paramn, 0, i);
            return;
          }
          i += 1;
        }
      }
    }
  }
  
  private void a(RecyclerView.n paramn, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramn);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          a(i, paramn);
          i -= 1;
        }
      }
    }
  }
  
  private void a(RecyclerView.n paramn, c paramc)
  {
    if (!a) {
      return;
    }
    if (f == -1)
    {
      b(paramn, g);
      return;
    }
    a(paramn, g);
  }
  
  private boolean a(RecyclerView.r paramr, a parama)
  {
    boolean bool = false;
    if ((paramr.a()) || (m == -1)) {
      return false;
    }
    if ((m < 0) || (m >= paramr.e()))
    {
      m = -1;
      n = Integer.MIN_VALUE;
      return false;
    }
    a = m;
    if ((o != null) && (o.a()))
    {
      c = o.c;
      if (c)
      {
        b = (k.d() - o.b);
        return true;
      }
      b = (k.c() + o.b);
      return true;
    }
    if (n == Integer.MIN_VALUE)
    {
      paramr = b(m);
      int i;
      if (paramr != null)
      {
        if (k.c(paramr) > k.f())
        {
          parama.b();
          return true;
        }
        if (k.a(paramr) - k.c() < 0)
        {
          b = k.c();
          c = false;
          return true;
        }
        if (k.d() - k.b(paramr) < 0)
        {
          b = k.d();
          c = true;
          return true;
        }
        if (c) {}
        for (i = k.b(paramr) + k.b();; i = k.a(paramr))
        {
          b = i;
          return true;
        }
      }
      if (r() > 0)
      {
        i = d(f(0));
        if (m >= i) {
          break label351;
        }
      }
      label351:
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 == l) {
          bool = true;
        }
        c = bool;
        parama.b();
        return true;
      }
    }
    c = l;
    if (l)
    {
      b = (k.d() - n);
      return true;
    }
    b = (k.c() + n);
    return true;
  }
  
  private int b(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr, boolean paramBoolean)
  {
    int i = paramInt - k.c();
    if (i > 0)
    {
      int i1 = -c(i, paramn, paramr);
      i = i1;
      if (paramBoolean)
      {
        paramInt = paramInt + i1 - k.c();
        i = i1;
        if (paramInt > 0)
        {
          k.a(-paramInt);
          i = i1 - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (l) {
      return a(0, r(), paramBoolean1, paramBoolean2);
    }
    return a(r() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    a.c = (k.d() - paramInt2);
    c localc = a;
    if (l) {}
    for (int i = -1;; i = 1)
    {
      e = i;
      a.d = paramInt1;
      a.f = 1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void b(a parama)
  {
    c(a, b);
  }
  
  private void b(RecyclerView.n paramn, int paramInt)
  {
    int i = r();
    if (paramInt < 0) {}
    for (;;)
    {
      return;
      int i1 = k.e() - paramInt;
      View localView;
      if (l)
      {
        paramInt = 0;
        while (paramInt < i)
        {
          localView = f(paramInt);
          if (k.a(localView) < i1)
          {
            a(paramn, 0, paramInt);
            return;
          }
          paramInt += 1;
        }
      }
      else
      {
        paramInt = i - 1;
        while (paramInt >= 0)
        {
          localView = f(paramInt);
          if (k.a(localView) < i1)
          {
            a(paramn, i - 1, paramInt);
            return;
          }
          paramInt -= 1;
        }
      }
    }
  }
  
  private void b(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2)
  {
    if ((!paramr.b()) || (r() == 0) || (paramr.a()) || (!b())) {
      return;
    }
    int i = 0;
    int i1 = 0;
    List localList = paramn.b();
    int i4 = localList.size();
    int i5 = d(f(0));
    int i2 = 0;
    if (i2 < i4)
    {
      RecyclerView.u localu = (RecyclerView.u)localList.get(i2);
      int i3;
      if (localu.p())
      {
        i3 = i1;
        i1 = i;
        i = i3;
      }
      for (;;)
      {
        i3 = i2 + 1;
        i2 = i1;
        i1 = i;
        i = i2;
        i2 = i3;
        break;
        int i6;
        if (localu.d() < i5)
        {
          i6 = 1;
          label143:
          if (i6 == l) {
            break label195;
          }
        }
        label195:
        for (i3 = -1;; i3 = 1)
        {
          if (i3 != -1) {
            break label201;
          }
          i3 = k.c(a) + i;
          i = i1;
          i1 = i3;
          break;
          i6 = 0;
          break label143;
        }
        label201:
        i3 = k.c(a) + i1;
        i1 = i;
        i = i3;
      }
    }
    a.k = localList;
    if (i > 0)
    {
      c(d(C()), paramInt1);
      a.h = i;
      a.c = 0;
      a.a();
      a(paramn, a, paramr, false);
    }
    if (i1 > 0)
    {
      b(d(D()), paramInt2);
      a.h = i1;
      a.c = 0;
      a.a();
      a(paramn, a, paramr, false);
    }
    a.k = null;
  }
  
  private void b(RecyclerView.n paramn, RecyclerView.r paramr, a parama)
  {
    if (a(paramr, parama)) {}
    while (c(paramn, paramr, parama)) {
      return;
    }
    parama.b();
    if (d) {}
    for (int i = paramr.e() - 1;; i = 0)
    {
      a = i;
      return;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    a.c = (paramInt2 - k.c());
    a.d = paramInt1;
    c localc = a;
    if (l) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.f = -1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private boolean c(RecyclerView.n paramn, RecyclerView.r paramr, a parama)
  {
    int i = 0;
    if (r() == 0) {}
    do
    {
      return false;
      View localView = y();
      if ((localView != null) && (a.a(parama, localView, paramr)))
      {
        parama.a(localView);
        return true;
      }
    } while (b != d);
    if (c)
    {
      paramn = f(paramn, paramr);
      label66:
      if (paramn == null) {
        break label165;
      }
      parama.b(paramn);
      if ((!paramr.a()) && (b()))
      {
        if ((k.a(paramn) >= k.d()) || (k.b(paramn) < k.c())) {
          i = 1;
        }
        if (i != 0) {
          if (!c) {
            break label167;
          }
        }
      }
    }
    label165:
    label167:
    for (i = k.d();; i = k.c())
    {
      b = i;
      return true;
      paramn = g(paramn, paramr);
      break label66;
      break;
    }
  }
  
  private View f(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (l) {
      return h(paramn, paramr);
    }
    return i(paramn, paramr);
  }
  
  private View g(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (l) {
      return i(paramn, paramr);
    }
    return h(paramn, paramr);
  }
  
  private int h(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    h();
    i locali = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return k.a(paramr, locali, localView, b(bool1, true), this, e, l);
    }
  }
  
  private View h(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return a(paramn, paramr, 0, r(), paramr.e());
  }
  
  private int i(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    h();
    i locali = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return k.a(paramr, locali, localView, b(bool1, true), this, e);
    }
  }
  
  private View i(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return a(paramn, paramr, r() - 1, -1, paramr.e());
  }
  
  private int j(int paramInt)
  {
    int i1 = -1;
    int i2 = 1;
    int i3 = Integer.MIN_VALUE;
    int i = i1;
    switch (paramInt)
    {
    default: 
      i = Integer.MIN_VALUE;
    case 1: 
    case 2: 
    case 33: 
    case 130: 
    case 17: 
      do
      {
        do
        {
          return i;
          return 1;
          i = i1;
        } while (j == 1);
        return Integer.MIN_VALUE;
        paramInt = i3;
        if (j == 1) {
          paramInt = 1;
        }
        return paramInt;
        i = i1;
      } while (j == 0);
      return Integer.MIN_VALUE;
    }
    if (j == 0) {}
    for (paramInt = i2;; paramInt = Integer.MIN_VALUE) {
      return paramInt;
    }
  }
  
  private int j(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    h();
    i locali = k;
    if (!e) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!e) {
        bool1 = true;
      }
      return k.b(paramr, locali, localView, b(bool1, true), this, e);
    }
  }
  
  public int a(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (j == 1) {
      return 0;
    }
    return c(paramInt, paramn, paramr);
  }
  
  int a(RecyclerView.n paramn, c paramc, RecyclerView.r paramr, boolean paramBoolean)
  {
    int i2 = c;
    if (g != Integer.MIN_VALUE)
    {
      if (c < 0) {
        g += c;
      }
      a(paramn, paramc);
    }
    int i = c + h;
    b localb = new b();
    if ((i > 0) && (paramc.a(paramr)))
    {
      localb.a();
      a(paramn, paramr, paramc, localb);
      if (!b) {
        break label104;
      }
    }
    for (;;)
    {
      return i2 - c;
      label104:
      b += a * f;
      int i1;
      if ((c) && (a.k == null))
      {
        i1 = i;
        if (paramr.a()) {}
      }
      else
      {
        c -= a;
        i1 = i - a;
      }
      if (g != Integer.MIN_VALUE)
      {
        g += a;
        if (c < 0) {
          g += c;
        }
        a(paramn, paramc);
      }
      i = i1;
      if (!paramBoolean) {
        break;
      }
      i = i1;
      if (!d) {
        break;
      }
    }
  }
  
  protected int a(RecyclerView.r paramr)
  {
    if (paramr.d()) {
      return k.f();
    }
    return 0;
  }
  
  public RecyclerView.LayoutParams a()
  {
    return new RecyclerView.LayoutParams(-2, -2);
  }
  
  View a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    h();
    int i1 = k.c();
    int i2 = k.d();
    if (paramInt2 > paramInt1) {}
    Object localObject;
    View localView;
    for (int i = 1;; i = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2) {
        break label130;
      }
      localView = f(paramInt1);
      int i3 = k.a(localView);
      int i4 = k.b(localView);
      if ((i3 >= i2) || (i4 <= i1)) {
        break label133;
      }
      if ((paramBoolean1) && ((i3 < i1) || (i4 > i2))) {
        break;
      }
      return localView;
    }
    if ((paramBoolean2) && (localObject == null)) {
      localObject = localView;
    }
    label130:
    label133:
    for (;;)
    {
      paramInt1 += i;
      break;
      return (View)localObject;
    }
  }
  
  View a(RecyclerView.n paramn, RecyclerView.r paramr, int paramInt1, int paramInt2, int paramInt3)
  {
    paramr = null;
    h();
    int i1 = k.c();
    int i2 = k.d();
    int i;
    label35:
    Object localObject1;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      paramn = null;
      if (paramInt1 == paramInt2) {
        break label157;
      }
      localObject1 = f(paramInt1);
      int i3 = d((View)localObject1);
      if ((i3 < 0) || (i3 >= paramInt3)) {
        break label172;
      }
      if (!((RecyclerView.LayoutParams)((View)localObject1).getLayoutParams()).c()) {
        break label113;
      }
      if (paramn != null) {
        break label172;
      }
      paramn = paramr;
      paramr = (RecyclerView.r)localObject1;
    }
    for (;;)
    {
      paramInt1 += i;
      localObject1 = paramr;
      paramr = paramn;
      paramn = (RecyclerView.n)localObject1;
      break label35;
      i = -1;
      break;
      label113:
      Object localObject2;
      if (k.a((View)localObject1) < i2)
      {
        localObject2 = localObject1;
        if (k.b((View)localObject1) >= i1) {}
      }
      else
      {
        if (paramr != null) {
          break label172;
        }
        paramr = paramn;
        paramn = (RecyclerView.n)localObject1;
        continue;
        label157:
        if (paramr == null) {
          break label167;
        }
      }
      for (;;)
      {
        localObject2 = paramr;
        return (View)localObject2;
        label167:
        paramr = paramn;
      }
      label172:
      localObject1 = paramn;
      paramn = paramr;
      paramr = (RecyclerView.r)localObject1;
    }
  }
  
  public View a(View paramView, int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    B();
    if (r() == 0) {}
    label42:
    label134:
    label136:
    label142:
    for (;;)
    {
      return null;
      paramInt = j(paramInt);
      if (paramInt != Integer.MIN_VALUE)
      {
        h();
        if (paramInt == -1)
        {
          paramView = g(paramn, paramr);
          if (paramView == null) {
            break label134;
          }
          h();
          a(paramInt, (int)(0.33F * k.f()), false, paramr);
          a.g = Integer.MIN_VALUE;
          a.a = false;
          a(paramn, a, paramr, true);
          if (paramInt != -1) {
            break label136;
          }
        }
        for (paramn = C();; paramn = D())
        {
          if ((paramn == paramView) || (!paramn.isFocusable())) {
            break label142;
          }
          return paramn;
          paramView = f(paramn, paramr);
          break label42;
          break;
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    a(null);
    if (paramInt == j) {
      return;
    }
    j = paramInt;
    k = null;
    l();
  }
  
  public void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      o = ((SavedState)paramParcelable);
      l();
    }
  }
  
  void a(RecyclerView.n paramn, RecyclerView.r paramr, a parama) {}
  
  void a(RecyclerView.n paramn, RecyclerView.r paramr, c paramc, b paramb)
  {
    paramn = paramc.a(paramn);
    if (paramn == null)
    {
      b = true;
      return;
    }
    paramr = (RecyclerView.LayoutParams)paramn.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label61:
    int i;
    int i1;
    label120:
    int i2;
    int i3;
    if (k == null)
    {
      bool2 = l;
      if (f == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label215;
        }
        b(paramn);
        a(paramn, 0, 0);
        a = k.c(paramn);
        if (j != 1) {
          break label322;
        }
        if (!g()) {
          break label271;
        }
        i = s() - w();
        i1 = i - k.d(paramn);
        if (f != -1) {
          break label293;
        }
        i2 = b;
        i3 = b - a;
      }
    }
    for (;;)
    {
      a(paramn, i1 + leftMargin, i3 + topMargin, i - rightMargin, i2 - bottomMargin);
      if ((paramr.c()) || (paramr.d())) {
        c = true;
      }
      d = paramn.isFocusable();
      return;
      bool1 = false;
      break;
      label215:
      b(paramn, 0);
      break label61;
      bool2 = l;
      if (f == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label262;
        }
        a(paramn);
        break;
      }
      label262:
      a(paramn, 0);
      break label61;
      label271:
      i1 = u();
      i = k.d(paramn) + i1;
      break label120;
      label293:
      i3 = b;
      i2 = b;
      int i4 = a;
      i2 += i4;
      continue;
      label322:
      i3 = v();
      i2 = k.d(paramn) + i3;
      if (f == -1)
      {
        i = b;
        i1 = b - a;
      }
      else
      {
        i1 = b;
        i = b;
        i4 = a;
        i += i4;
      }
    }
  }
  
  public void a(RecyclerView paramRecyclerView, RecyclerView.n paramn)
  {
    super.a(paramRecyclerView, paramn);
    if (f)
    {
      c(paramn);
      paramn.a();
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    if (r() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      paramAccessibilityEvent.b(j());
      paramAccessibilityEvent.c(k());
    }
  }
  
  public void a(String paramString)
  {
    if (o == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if (paramBoolean == c) {
      return;
    }
    c = paramBoolean;
    l();
  }
  
  public int b(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (j == 0) {
      return 0;
    }
    return c(paramInt, paramn, paramr);
  }
  
  public int b(RecyclerView.r paramr)
  {
    return h(paramr);
  }
  
  public View b(int paramInt)
  {
    int i = r();
    Object localObject;
    if (i == 0) {
      localObject = null;
    }
    View localView;
    do
    {
      return (View)localObject;
      int i1 = paramInt - d(f(0));
      if ((i1 < 0) || (i1 >= i)) {
        break;
      }
      localView = f(i1);
      localObject = localView;
    } while (d(localView) == paramInt);
    return super.b(paramInt);
  }
  
  public boolean b()
  {
    return (o == null) && (b == d);
  }
  
  int c(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if ((r() == 0) || (paramInt == 0)) {
      return 0;
    }
    a.a = true;
    h();
    if (paramInt > 0) {}
    int i1;
    int i2;
    for (int i = 1;; i = -1)
    {
      i1 = Math.abs(paramInt);
      a(i, i1, true, paramr);
      i2 = a.g + a(paramn, a, paramr, false);
      if (i2 >= 0) {
        break;
      }
      return 0;
    }
    if (i1 > i2) {
      paramInt = i * i2;
    }
    k.a(-paramInt);
    a.j = paramInt;
    return paramInt;
  }
  
  public int c(RecyclerView.r paramr)
  {
    return h(paramr);
  }
  
  public Parcelable c()
  {
    if (o != null) {
      return new SavedState(o);
    }
    SavedState localSavedState = new SavedState();
    if (r() > 0)
    {
      h();
      boolean bool = b ^ l;
      c = bool;
      if (bool)
      {
        localView = D();
        b = (k.d() - k.b(localView));
        a = d(localView);
        return localSavedState;
      }
      View localView = C();
      a = d(localView);
      b = (k.a(localView) - k.c());
      return localSavedState;
    }
    localSavedState.b();
    return localSavedState;
  }
  
  public void c(int paramInt)
  {
    m = paramInt;
    n = Integer.MIN_VALUE;
    if (o != null) {
      o.b();
    }
    l();
  }
  
  public void c(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (((o != null) || (m != -1)) && (paramr.e() == 0))
    {
      c(paramn);
      return;
    }
    if ((o != null) && (o.a())) {
      m = o.a;
    }
    h();
    a.a = false;
    B();
    p.a();
    p.c = (l ^ d);
    b(paramn, paramr, p);
    int i = a(paramr);
    int i1;
    int i2;
    int i3;
    Object localObject;
    label244:
    label257:
    int i4;
    if (a.j >= 0)
    {
      i1 = 0;
      i2 = i1 + k.c();
      i3 = i + k.g();
      i = i3;
      i1 = i2;
      if (paramr.a())
      {
        i = i3;
        i1 = i2;
        if (m != -1)
        {
          i = i3;
          i1 = i2;
          if (n != Integer.MIN_VALUE)
          {
            localObject = b(m);
            i = i3;
            i1 = i2;
            if (localObject != null)
            {
              if (!l) {
                break label613;
              }
              i = k.d() - k.b((View)localObject) - n;
              if (i <= 0) {
                break label645;
              }
              i1 = i2 + i;
              i = i3;
            }
          }
        }
      }
      a(paramn, paramr, p);
      a(paramn);
      a.i = paramr.a();
      if (!p.c) {
        break label657;
      }
      b(p);
      a.h = i1;
      a(paramn, a, paramr, false);
      i3 = a.b;
      i4 = a.d;
      i1 = i;
      if (a.c > 0) {
        i1 = i + a.c;
      }
      a(p);
      a.h = i1;
      localObject = a;
      d += a.e;
      a(paramn, a, paramr, false);
      i2 = a.b;
      if (a.c <= 0) {
        break label901;
      }
      i = a.c;
      c(i4, i3);
      a.h = i;
      a(paramn, a, paramr, false);
    }
    label486:
    label613:
    label645:
    label657:
    label856:
    label901:
    for (i = a.b;; i = i3)
    {
      i1 = i;
      i = i2;
      i2 = i;
      i3 = i1;
      if (r() > 0)
      {
        if (!(l ^ d)) {
          break label856;
        }
        i2 = a(i, paramn, paramr, true);
        i3 = i1 + i2;
        i1 = b(i3, paramn, paramr, false);
        i3 += i1;
      }
      for (i2 = i + i2 + i1;; i2 = i + i4)
      {
        b(paramn, paramr, i3, i2);
        if (!paramr.a())
        {
          m = -1;
          n = Integer.MIN_VALUE;
          k.a();
        }
        b = d;
        o = null;
        return;
        i1 = i;
        i = 0;
        break;
        i = k.a((View)localObject);
        i1 = k.c();
        i = n - (i - i1);
        break label244;
        i = i3 - i;
        i1 = i2;
        break label257;
        a(p);
        a.h = i;
        a(paramn, a, paramr, false);
        i2 = a.b;
        i4 = a.d;
        i = i1;
        if (a.c > 0) {
          i = i1 + a.c;
        }
        b(p);
        a.h = i;
        localObject = a;
        d += a.e;
        a(paramn, a, paramr, false);
        i3 = a.b;
        i = i2;
        i1 = i3;
        if (a.c <= 0) {
          break label486;
        }
        i = a.c;
        b(i4, i2);
        a.h = i;
        a(paramn, a, paramr, false);
        i = a.b;
        i1 = i3;
        break label486;
        i2 = b(i1, paramn, paramr, true);
        i += i2;
        i4 = a(i, paramn, paramr, false);
        i3 = i1 + i2 + i4;
      }
    }
  }
  
  public int d(RecyclerView.r paramr)
  {
    return i(paramr);
  }
  
  public boolean d()
  {
    return j == 0;
  }
  
  public int e(RecyclerView.r paramr)
  {
    return i(paramr);
  }
  
  public boolean e()
  {
    return j == 1;
  }
  
  public int f()
  {
    return j;
  }
  
  public int f(RecyclerView.r paramr)
  {
    return j(paramr);
  }
  
  public int g(RecyclerView.r paramr)
  {
    return j(paramr);
  }
  
  protected boolean g()
  {
    return p() == 1;
  }
  
  void h()
  {
    if (a == null) {
      a = i();
    }
    if (k == null) {
      k = i.a(this, j);
    }
  }
  
  c i()
  {
    return new c();
  }
  
  public int j()
  {
    View localView = a(0, r(), false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
  
  public int k()
  {
    View localView = a(r() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return d(localView);
  }
  
  static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public LinearLayoutManager.SavedState a(Parcel paramAnonymousParcel)
      {
        return new LinearLayoutManager.SavedState(paramAnonymousParcel);
      }
      
      public LinearLayoutManager.SavedState[] a(int paramAnonymousInt)
      {
        return new LinearLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    int a;
    int b;
    boolean c;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        c = bool;
        return;
        bool = false;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      a = a;
      b = b;
      c = c;
    }
    
    boolean a()
    {
      return a >= 0;
    }
    
    void b()
    {
      a = -1;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      if (c) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  class a
  {
    int a;
    int b;
    boolean c;
    
    a() {}
    
    private boolean a(View paramView, RecyclerView.r paramr)
    {
      paramView = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      return (!paramView.c()) && (paramView.e() >= 0) && (paramView.e() < paramr.e());
    }
    
    void a()
    {
      a = -1;
      b = Integer.MIN_VALUE;
      c = false;
    }
    
    public void a(View paramView)
    {
      int j = LinearLayoutManager.this.k.b();
      if (j >= 0) {
        b(paramView);
      }
      int i;
      do
      {
        int k;
        do
        {
          do
          {
            do
            {
              return;
              a = d(paramView);
              if (!c) {
                break;
              }
              i = LinearLayoutManager.this.k.d() - j - LinearLayoutManager.this.k.b(paramView);
              b = (LinearLayoutManager.this.k.d() - i);
            } while (i <= 0);
            j = LinearLayoutManager.this.k.c(paramView);
            k = b;
            m = LinearLayoutManager.this.k.c();
            j = k - j - (m + Math.min(LinearLayoutManager.this.k.a(paramView) - m, 0));
          } while (j >= 0);
          k = b;
          b = (Math.min(i, -j) + k);
          return;
          k = LinearLayoutManager.this.k.a(paramView);
          i = k - LinearLayoutManager.this.k.c();
          b = k;
        } while (i <= 0);
        int m = LinearLayoutManager.this.k.c(paramView);
        int n = LinearLayoutManager.this.k.d();
        int i1 = LinearLayoutManager.this.k.b(paramView);
        j = LinearLayoutManager.this.k.d() - Math.min(0, n - j - i1) - (k + m);
      } while (j >= 0);
      b -= Math.min(i, -j);
    }
    
    void b()
    {
      if (c) {}
      for (int i = k.d();; i = k.c())
      {
        b = i;
        return;
      }
    }
    
    public void b(View paramView)
    {
      if (c) {}
      for (b = (k.b(paramView) + k.b());; b = k.a(paramView))
      {
        a = d(paramView);
        return;
      }
    }
    
    public String toString()
    {
      return "AnchorInfo{mPosition=" + a + ", mCoordinate=" + b + ", mLayoutFromEnd=" + c + '}';
    }
  }
  
  protected static class b
  {
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
    
    void a()
    {
      a = 0;
      b = false;
      c = false;
      d = false;
    }
  }
  
  static class c
  {
    boolean a = true;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h = 0;
    boolean i = false;
    int j;
    List<RecyclerView.u> k = null;
    
    private View b()
    {
      int n = k.size();
      int m = 0;
      if (m < n)
      {
        View localView = k.get(m)).a;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if (localLayoutParams.c()) {}
        while (d != localLayoutParams.e())
        {
          m += 1;
          break;
        }
        a(localView);
        return localView;
      }
      return null;
    }
    
    View a(RecyclerView.n paramn)
    {
      if (k != null) {
        return b();
      }
      paramn = paramn.c(d);
      d += e;
      return paramn;
    }
    
    public void a()
    {
      a(null);
    }
    
    public void a(View paramView)
    {
      paramView = b(paramView);
      if (paramView == null)
      {
        d = -1;
        return;
      }
      d = ((RecyclerView.LayoutParams)paramView.getLayoutParams()).e();
    }
    
    boolean a(RecyclerView.r paramr)
    {
      return (d >= 0) && (d < paramr.e());
    }
    
    public View b(View paramView)
    {
      int i2 = k.size();
      Object localObject = null;
      int m = Integer.MAX_VALUE;
      int n = 0;
      if (n < i2)
      {
        View localView = k.get(n)).a;
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        if (localView != paramView) {
          if (!localLayoutParams.c()) {}
        }
        for (;;)
        {
          n += 1;
          break;
          int i1 = (localLayoutParams.e() - d) * e;
          if (i1 >= 0) {
            if (i1 < m)
            {
              if (i1 == 0) {
                return localView;
              }
              localObject = localView;
              m = i1;
            }
          }
        }
      }
      return (View)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */