package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.yelp.android.h.a;
import com.yelp.android.h.c;
import com.yelp.android.h.c.l;
import com.yelp.android.h.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager
  extends RecyclerView.i
{
  private boolean A;
  private final Runnable B;
  i a;
  i b;
  boolean c;
  int d;
  int e;
  LazySpanLookup f;
  private int g;
  private b[] h;
  private int i;
  private int j;
  private g k;
  private boolean l;
  private BitSet m;
  private int n;
  private boolean o;
  private boolean p;
  private SavedState t;
  private int u;
  private int v;
  private int w;
  private final Rect x;
  private final a y;
  private boolean z;
  
  private boolean B()
  {
    if ((r() == 0) || (n == 0) || (!m())) {
      return false;
    }
    int i2;
    if (c) {
      i2 = E();
    }
    for (int i1 = F(); (i2 == 0) && (f() != null); i1 = E())
    {
      f.a();
      A();
      l();
      return true;
      i2 = F();
    }
    if (!z) {
      return false;
    }
    if (c) {}
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem1;
    for (int i3 = -1;; i3 = 1)
    {
      localFullSpanItem1 = f.a(i2, i1 + 1, i3, true);
      if (localFullSpanItem1 != null) {
        break;
      }
      z = false;
      f.a(i1 + 1);
      return false;
    }
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem2 = f.a(i2, a, i3 * -1, true);
    if (localFullSpanItem2 == null) {
      f.a(a);
    }
    for (;;)
    {
      A();
      l();
      return true;
      f.a(a + 1);
    }
  }
  
  private void C()
  {
    if (a == null)
    {
      a = i.a(this, i);
      b = i.a(this, 1 - i);
      k = new g();
    }
  }
  
  private void D()
  {
    boolean bool = true;
    if ((i == 1) || (!g()))
    {
      c = l;
      return;
    }
    if (!l) {}
    for (;;)
    {
      c = bool;
      return;
      bool = false;
    }
  }
  
  private int E()
  {
    int i1 = r();
    if (i1 == 0) {
      return 0;
    }
    return d(f(i1 - 1));
  }
  
  private int F()
  {
    if (r() == 0) {
      return 0;
    }
    return d(f(0));
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i1;
    do
    {
      return paramInt1;
      i1 = View.MeasureSpec.getMode(paramInt1);
    } while ((i1 != Integer.MIN_VALUE) && (i1 != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i1);
  }
  
  private int a(RecyclerView.n paramn, g paramg, RecyclerView.r paramr)
  {
    m.set(0, g, true);
    int i3;
    int i4;
    label58:
    int i1;
    label61:
    View localView;
    LayoutParams localLayoutParams;
    int i7;
    int i5;
    label123:
    b localb;
    label144:
    label155:
    label176:
    label208:
    int i6;
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    int i2;
    if (d == 1)
    {
      i3 = f + a;
      c(d, i3);
      if (!c) {
        break label407;
      }
      i4 = a.d();
      i1 = 0;
      if ((!paramg.a(paramr)) || (m.isEmpty())) {
        break label705;
      }
      localView = paramg.a(paramn);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      i7 = localLayoutParams.e();
      i1 = f.c(i7);
      if (i1 != -1) {
        break label419;
      }
      i5 = 1;
      if (i5 == 0) {
        break label435;
      }
      if (!f) {
        break label425;
      }
      localb = h[0];
      f.a(i7, localb);
      e = localb;
      if (d != 1) {
        break label447;
      }
      b(localView);
      a(localView, localLayoutParams);
      if (d != 1) {
        break label469;
      }
      if (!f) {
        break label457;
      }
      i1 = n(i4);
      i6 = i1 + a.c(localView);
      if ((i5 == 0) || (!f)) {
        break label796;
      }
      localFullSpanItem = j(i1);
      b = -1;
      a = i7;
      f.a(localFullSpanItem);
      i2 = i1;
    }
    for (;;)
    {
      if ((f) && (c == -1))
      {
        if (i5 != 0) {
          z = true;
        }
      }
      else
      {
        label295:
        a(localView, localLayoutParams, paramg);
        if (!f) {
          break label639;
        }
        i1 = b.c();
        label321:
        i5 = i1 + b.c(localView);
        if (i != 1) {
          break label670;
        }
        b(localView, i1, i2, i5, i6);
        label357:
        if (!f) {
          break label687;
        }
        c(k.d, i3);
      }
      for (;;)
      {
        a(paramn, k);
        i1 = 1;
        break label61;
        i3 = e - a;
        break;
        label407:
        i4 = a.c();
        break label58;
        label419:
        i5 = 0;
        break label123;
        label425:
        localb = a(paramg);
        break label144;
        label435:
        localb = h[i1];
        break label155;
        label447:
        b(localView, 0);
        break label176;
        label457:
        i1 = localb.b(i4);
        break label208;
        label469:
        if (f) {}
        for (i1 = m(i4);; i1 = localb.a(i4))
        {
          i2 = i1 - a.c(localView);
          if ((i5 != 0) && (f))
          {
            localFullSpanItem = k(i1);
            b = 1;
            a = i7;
            f.a(localFullSpanItem);
          }
          i6 = i1;
          break;
        }
        if (d == 1) {
          if (!j()) {
            i1 = 1;
          }
        }
        for (;;)
        {
          if (i1 == 0) {
            break label637;
          }
          localFullSpanItem = f.f(i7);
          if (localFullSpanItem != null) {
            d = true;
          }
          z = true;
          break;
          i1 = 0;
          continue;
          if (!k()) {
            i1 = 1;
          } else {
            i1 = 0;
          }
        }
        label637:
        break label295;
        label639:
        i1 = d;
        i5 = j;
        i1 = b.c() + i1 * i5;
        break label321;
        label670:
        b(localView, i2, i1, i6, i5);
        break label357;
        label687:
        a(localb, k.d, i3);
      }
      label705:
      if (i1 == 0) {
        a(paramn, k);
      }
      if (k.d == -1) {
        i1 = m(a.c());
      }
      for (i1 = a.c() - i1; i1 > 0; i1 = n(a.d()) - a.d()) {
        return Math.min(a, i1);
      }
      return 0;
      label796:
      i2 = i1;
    }
  }
  
  private int a(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    C();
    i locali = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return k.a(paramr, locali, localView, b(bool1, true), this, A, c);
    }
  }
  
  private b a(g paramg)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    int i2 = -1;
    int i1;
    int i3;
    int i6;
    int i5;
    int i4;
    if (p(d))
    {
      i1 = g - 1;
      i3 = -1;
      if (d != 1) {
        break label122;
      }
      i6 = a.c();
      i5 = Integer.MAX_VALUE;
      i4 = i1;
      paramg = (g)localObject1;
      i1 = i5;
      label60:
      localObject1 = paramg;
      if (i4 == i3) {
        break label193;
      }
      localObject1 = h[i4];
      i5 = ((b)localObject1).b(i6);
      if (i5 >= i1) {
        break label199;
      }
      paramg = (g)localObject1;
      i1 = i5;
    }
    label122:
    label193:
    label196:
    label199:
    for (;;)
    {
      i4 += i2;
      break label60;
      i3 = g;
      i1 = 0;
      i2 = 1;
      break;
      i6 = a.d();
      i5 = Integer.MIN_VALUE;
      i4 = i1;
      paramg = (g)localObject2;
      i1 = i5;
      localObject1 = paramg;
      if (i4 != i3)
      {
        localObject1 = h[i4];
        i5 = ((b)localObject1).a(i6);
        if (i5 <= i1) {
          break label196;
        }
        paramg = (g)localObject1;
        i1 = i5;
      }
      for (;;)
      {
        i4 += i2;
        break;
        return (b)localObject1;
      }
    }
  }
  
  private void a(int paramInt)
  {
    int i1 = 1;
    k.d = paramInt;
    g localg = k;
    boolean bool2 = c;
    boolean bool1;
    if (paramInt == -1)
    {
      bool1 = true;
      if (bool2 != bool1) {
        break label49;
      }
    }
    label49:
    for (paramInt = i1;; paramInt = -1)
    {
      c = paramInt;
      return;
      bool1 = false;
      break;
    }
  }
  
  private void a(int paramInt, RecyclerView.r paramr)
  {
    int i1 = 0;
    k.a = 0;
    k.b = paramInt;
    boolean bool1;
    if (o())
    {
      int i2 = paramr.c();
      if (i2 != -1)
      {
        boolean bool2 = c;
        if (i2 < paramInt)
        {
          bool1 = true;
          if (bool2 != bool1) {
            break label113;
          }
          paramInt = a.f();
        }
      }
    }
    for (;;)
    {
      if (n())
      {
        k.e = (a.c() - i1);
        k.f = (paramInt + a.d());
        return;
        bool1 = false;
        break;
        label113:
        i1 = a.f();
        paramInt = 0;
        continue;
      }
      k.f = (paramInt + a.e());
      k.e = (-i1);
      return;
      paramInt = 0;
    }
  }
  
  private void a(RecyclerView.n paramn, int paramInt)
  {
    for (;;)
    {
      View localView;
      LayoutParams localLayoutParams;
      if (r() > 0)
      {
        localView = f(0);
        if (a.b(localView) <= paramInt)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (!f) {
            break label105;
          }
          i1 = 0;
          if (i1 >= g) {
            break label79;
          }
          if (b.a(h[i1]).size() != 1) {
            break label72;
          }
        }
      }
      label72:
      label79:
      label105:
      while (b.a(e).size() == 1)
      {
        for (;;)
        {
          return;
          i1 += 1;
        }
        int i1 = 0;
        while (i1 < g)
        {
          h[i1].h();
          i1 += 1;
        }
      }
      e.h();
      a(localView, paramn);
    }
  }
  
  private void a(RecyclerView.n paramn, RecyclerView.r paramr, boolean paramBoolean)
  {
    int i1 = n(a.d());
    i1 = a.d() - i1;
    if (i1 > 0)
    {
      i1 -= -c(-i1, paramn, paramr);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(i1);
      }
    }
  }
  
  private void a(RecyclerView.n paramn, g paramg)
  {
    if (a == 0)
    {
      if (d == -1)
      {
        b(paramn, f);
        return;
      }
      a(paramn, e);
      return;
    }
    if (d == -1)
    {
      i1 = e - l(e);
      if (i1 < 0) {}
      for (i1 = f;; i1 = f - Math.min(i1, a))
      {
        b(paramn, i1);
        return;
      }
    }
    int i1 = o(f) - f;
    if (i1 < 0) {}
    int i2;
    for (i1 = e;; i1 = Math.min(i1, a) + i2)
    {
      a(paramn, i1);
      return;
      i2 = e;
    }
  }
  
  private void a(a parama)
  {
    if (t.c > 0) {
      if (t.c == g)
      {
        int i2 = 0;
        if (i2 < g)
        {
          h[i2].e();
          int i3 = t.d[i2];
          int i1 = i3;
          if (i3 != Integer.MIN_VALUE) {
            if (!t.i) {
              break label102;
            }
          }
          label102:
          for (i1 = i3 + a.d();; i1 = i3 + a.c())
          {
            h[i2].c(i1);
            i2 += 1;
            break;
          }
        }
      }
      else
      {
        t.a();
        t.a = t.b;
      }
    }
    p = t.j;
    a(t.h);
    D();
    if (t.a != -1) {
      d = t.a;
    }
    for (c = t.i;; c = c)
    {
      if (t.e > 1)
      {
        f.a = t.f;
        f.b = t.g;
      }
      return;
    }
  }
  
  private void a(b paramb, int paramInt1, int paramInt2)
  {
    int i1 = paramb.i();
    if (paramInt1 == -1) {
      if (i1 + paramb.b() <= paramInt2) {
        m.set(d, false);
      }
    }
    while (paramb.d() - i1 < paramInt2) {
      return;
    }
    m.set(d, false);
  }
  
  private void a(View paramView, LayoutParams paramLayoutParams)
  {
    if (f)
    {
      if (i == 1)
      {
        b(paramView, u, b(height, w));
        return;
      }
      b(paramView, b(width, v), u);
      return;
    }
    if (i == 1)
    {
      b(paramView, v, b(height, w));
      return;
    }
    b(paramView, b(width, v), w);
  }
  
  private void a(View paramView, LayoutParams paramLayoutParams, g paramg)
  {
    if (d == 1)
    {
      if (f)
      {
        o(paramView);
        return;
      }
      e.b(paramView);
      return;
    }
    if (f)
    {
      p(paramView);
      return;
    }
    e.a(paramView);
  }
  
  private boolean a(b paramb)
  {
    if (c)
    {
      if (paramb.d() >= a.d()) {}
    }
    else {
      while (paramb.b() > a.c()) {
        return true;
      }
    }
    return false;
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      return paramInt2;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i3;
    int i2;
    int i1;
    if (c)
    {
      i3 = E();
      if (paramInt3 != 3) {
        break label100;
      }
      if (paramInt1 >= paramInt2) {
        break label89;
      }
      i2 = paramInt2 + 1;
      i1 = paramInt1;
      label31:
      f.b(i1);
      switch (paramInt3)
      {
      case 2: 
      default: 
        label72:
        if (i2 > i3) {
          break;
        }
      }
    }
    for (;;)
    {
      return;
      i3 = F();
      break;
      label89:
      i2 = paramInt1 + 1;
      i1 = paramInt2;
      break label31;
      label100:
      i2 = paramInt1 + paramInt2;
      i1 = paramInt1;
      break label31;
      f.b(paramInt1, paramInt2);
      break label72;
      f.a(paramInt1, paramInt2);
      break label72;
      f.a(paramInt1, 1);
      f.b(paramInt2, 1);
      break label72;
      if (c) {}
      for (paramInt1 = F(); i1 <= paramInt1; paramInt1 = E())
      {
        l();
        return;
      }
    }
  }
  
  private void b(RecyclerView.n paramn, int paramInt)
  {
    int i1 = r() - 1;
    for (;;)
    {
      View localView;
      LayoutParams localLayoutParams;
      if (i1 >= 0)
      {
        localView = f(i1);
        if (a.a(localView) >= paramInt)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (!f) {
            break label119;
          }
          i2 = 0;
          if (i2 >= g) {
            break label88;
          }
          if (b.a(h[i2]).size() != 1) {
            break label79;
          }
        }
      }
      label79:
      label88:
      label119:
      while (b.a(e).size() == 1)
      {
        for (;;)
        {
          return;
          i2 += 1;
        }
        int i2 = 0;
        while (i2 < g)
        {
          h[i2].g();
          i2 += 1;
        }
      }
      e.g();
      a(localView, paramn);
      i1 -= 1;
    }
  }
  
  private void b(RecyclerView.n paramn, RecyclerView.r paramr, boolean paramBoolean)
  {
    int i1 = m(a.c()) - a.c();
    if (i1 > 0)
    {
      i1 -= c(i1, paramn, paramr);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(-i1);
      }
    }
  }
  
  private void b(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView, x);
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    paramView.measure(a(paramInt1, leftMargin + x.left, rightMargin + x.right), a(paramInt2, topMargin + x.top, bottomMargin + x.bottom));
  }
  
  private void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    a(paramView, paramInt1 + leftMargin, paramInt2 + topMargin, paramInt3 - rightMargin, paramInt4 - bottomMargin);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (i1 < g)
    {
      if (b.a(h[i1]).isEmpty()) {}
      for (;;)
      {
        i1 += 1;
        break;
        a(h[i1], paramInt1, paramInt2);
      }
    }
  }
  
  private boolean c(RecyclerView.r paramr, a parama)
  {
    if (o) {}
    for (int i1 = s(paramr.e());; i1 = r(paramr.e()))
    {
      a = i1;
      b = Integer.MIN_VALUE;
      return true;
    }
  }
  
  private int h(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    C();
    i locali = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return k.a(paramr, locali, localView, b(bool1, true), this, A);
    }
  }
  
  private int i(RecyclerView.r paramr)
  {
    boolean bool2 = false;
    if (r() == 0) {
      return 0;
    }
    C();
    i locali = a;
    if (!A) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      View localView = a(bool1, true);
      bool1 = bool2;
      if (!A) {
        bool1 = true;
      }
      return k.b(paramr, locali, localView, b(bool1, true), this, A);
    }
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem j(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    c = new int[g];
    int i1 = 0;
    while (i1 < g)
    {
      c[i1] = (paramInt - h[i1].b(paramInt));
      i1 += 1;
    }
    return localFullSpanItem;
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem k(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    c = new int[g];
    int i1 = 0;
    while (i1 < g)
    {
      c[i1] = (h[i1].a(paramInt) - paramInt);
      i1 += 1;
    }
    return localFullSpanItem;
  }
  
  private int l(int paramInt)
  {
    int i2 = h[0].a(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].a(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int m(int paramInt)
  {
    int i2 = h[0].a(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].a(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int n(int paramInt)
  {
    int i2 = h[0].b(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].b(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int o(int paramInt)
  {
    int i2 = h[0].b(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].b(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private void o(View paramView)
  {
    int i1 = g - 1;
    while (i1 >= 0)
    {
      h[i1].b(paramView);
      i1 -= 1;
    }
  }
  
  private void p(View paramView)
  {
    int i1 = g - 1;
    while (i1 >= 0)
    {
      h[i1].a(paramView);
      i1 -= 1;
    }
  }
  
  private boolean p(int paramInt)
  {
    int i1;
    if (i == 0) {
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 == c) {
          break label29;
        }
      }
    }
    label29:
    label63:
    label66:
    for (;;)
    {
      return true;
      i1 = 0;
      break;
      return false;
      if (paramInt == -1)
      {
        i1 = 1;
        if (i1 != c) {
          break label63;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == g()) {
          break label66;
        }
        return false;
        i1 = 0;
        break;
      }
    }
  }
  
  private int q(int paramInt)
  {
    int i1 = -1;
    if (r() == 0)
    {
      if (c) {
        return 1;
      }
      return -1;
    }
    int i2;
    if (paramInt < F())
    {
      i2 = 1;
      if (i2 == c) {
        break label47;
      }
    }
    label47:
    for (paramInt = i1;; paramInt = 1)
    {
      return paramInt;
      i2 = 0;
      break;
    }
  }
  
  private int r(int paramInt)
  {
    int i2 = r();
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = d(f(i1));
      if ((i3 >= 0) && (i3 < paramInt)) {
        return i3;
      }
      i1 += 1;
    }
    return 0;
  }
  
  private int s(int paramInt)
  {
    int i1 = r() - 1;
    while (i1 >= 0)
    {
      int i2 = d(f(i1));
      if ((i2 >= 0) && (i2 < paramInt)) {
        return i2;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  public int a(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return c(paramInt, paramn, paramr);
  }
  
  public int a(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (i == 0) {
      return g;
    }
    return super.a(paramn, paramr);
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
  
  View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    C();
    int i2 = a.c();
    int i3 = a.d();
    int i4 = r();
    int i1 = 0;
    Object localObject1 = null;
    if (i1 < i4)
    {
      View localView = f(i1);
      int i5 = a.a(localView);
      Object localObject2 = localObject1;
      if (a.b(localView) > i2)
      {
        if (i5 < i3) {
          break label97;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i1 += 1;
        localObject1 = localObject2;
        break;
        label97:
        if ((i5 >= i2) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  public void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      t = ((SavedState)paramParcelable);
      l();
    }
  }
  
  public void a(RecyclerView.n paramn, RecyclerView.r paramr, View paramView, c paramc)
  {
    paramn = paramView.getLayoutParams();
    if (!(paramn instanceof LayoutParams))
    {
      super.a(paramView, paramc);
      return;
    }
    paramn = (LayoutParams)paramn;
    if (i == 0)
    {
      i2 = paramn.a();
      if (f) {}
      for (i1 = g;; i1 = 1)
      {
        paramc.c(c.l.a(i2, i1, -1, -1, f, false));
        return;
      }
    }
    int i2 = paramn.a();
    if (f) {}
    for (int i1 = g;; i1 = 1)
    {
      paramc.c(c.l.a(-1, -1, i2, i1, f, false));
      return;
    }
  }
  
  void a(RecyclerView.r paramr, a parama)
  {
    if (b(paramr, parama)) {}
    while (c(paramr, parama)) {
      return;
    }
    parama.b();
    a = 0;
  }
  
  public void a(RecyclerView paramRecyclerView)
  {
    f.a();
    l();
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 0);
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    b(paramInt1, paramInt2, 3);
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    b(paramInt1, paramInt2, 2);
  }
  
  public void a(RecyclerView paramRecyclerView, RecyclerView.n paramn)
  {
    b(B);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].e();
      i1 += 1;
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (r() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      localView1 = a(false, true);
      localView2 = b(false, true);
      if ((localView1 != null) && (localView2 != null)) {}
    }
    else
    {
      return;
    }
    int i1 = d(localView1);
    int i2 = d(localView2);
    if (i1 < i2)
    {
      paramAccessibilityEvent.b(i1);
      paramAccessibilityEvent.c(i2);
      return;
    }
    paramAccessibilityEvent.b(i2);
    paramAccessibilityEvent.c(i1);
  }
  
  public void a(String paramString)
  {
    if (t == null) {
      super.a(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a(null);
    if ((t != null) && (t.h != paramBoolean)) {
      t.h = paramBoolean;
    }
    l = paramBoolean;
    l();
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public int b(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    return c(paramInt, paramn, paramr);
  }
  
  public int b(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    if (i == 1) {
      return g;
    }
    return super.b(paramn, paramr);
  }
  
  public int b(RecyclerView.r paramr)
  {
    return a(paramr);
  }
  
  View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    C();
    int i2 = a.c();
    int i3 = a.d();
    int i1 = r() - 1;
    Object localObject1 = null;
    if (i1 >= 0)
    {
      View localView = f(i1);
      int i4 = a.a(localView);
      int i5 = a.b(localView);
      Object localObject2 = localObject1;
      if (i5 > i2)
      {
        if (i4 < i3) {
          break label98;
        }
        localObject2 = localObject1;
      }
      for (;;)
      {
        i1 -= 1;
        localObject1 = localObject2;
        break;
        label98:
        if ((i5 <= i3) || (!paramBoolean1)) {
          return localView;
        }
        localObject2 = localObject1;
        if (paramBoolean2)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
      }
    }
    return (View)localObject1;
  }
  
  public void b(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 1);
  }
  
  public boolean b()
  {
    return t == null;
  }
  
  boolean b(RecyclerView.r paramr, a parama)
  {
    boolean bool = false;
    if ((paramr.a()) || (d == -1)) {
      return false;
    }
    if ((d < 0) || (d >= paramr.e()))
    {
      d = -1;
      e = Integer.MIN_VALUE;
      return false;
    }
    if ((t == null) || (t.a == -1) || (t.c < 1))
    {
      paramr = b(d);
      if (paramr != null)
      {
        if (c) {}
        for (int i1 = E();; i1 = F())
        {
          a = i1;
          if (e == Integer.MIN_VALUE) {
            break label188;
          }
          if (!c) {
            break;
          }
          b = (a.d() - e - a.b(paramr));
          return true;
        }
        b = (a.c() + e - a.a(paramr));
        return true;
        label188:
        if (a.c(paramr) > a.f())
        {
          if (c) {}
          for (i1 = a.d();; i1 = a.c())
          {
            b = i1;
            return true;
          }
        }
        i1 = a.a(paramr) - a.c();
        if (i1 < 0)
        {
          b = (-i1);
          return true;
        }
        i1 = a.d() - a.b(paramr);
        if (i1 < 0)
        {
          b = i1;
          return true;
        }
        b = Integer.MIN_VALUE;
        return true;
      }
      a = d;
      if (e == Integer.MIN_VALUE)
      {
        if (q(a) == 1) {
          bool = true;
        }
        c = bool;
        parama.b();
      }
      for (;;)
      {
        d = true;
        return true;
        parama.a(e);
      }
    }
    b = Integer.MIN_VALUE;
    a = d;
    return true;
  }
  
  int c(int paramInt, RecyclerView.n paramn, RecyclerView.r paramr)
  {
    C();
    int i1;
    int i2;
    if (paramInt > 0)
    {
      i1 = 1;
      i2 = E();
      a(i2, paramr);
      a(i1);
      k.b = (i2 + k.c);
      i2 = Math.abs(paramInt);
      k.a = i2;
      i1 = a(paramn, k, paramr);
      if (i2 >= i1) {
        break label112;
      }
    }
    for (;;)
    {
      a.a(-paramInt);
      o = c;
      return paramInt;
      i1 = -1;
      i2 = F();
      break;
      label112:
      if (paramInt < 0) {
        paramInt = -i1;
      } else {
        paramInt = i1;
      }
    }
  }
  
  public int c(RecyclerView.r paramr)
  {
    return a(paramr);
  }
  
  public Parcelable c()
  {
    if (t != null) {
      return new SavedState(t);
    }
    SavedState localSavedState = new SavedState();
    h = l;
    i = o;
    j = p;
    int i1;
    label130:
    int i2;
    label167:
    int i3;
    if ((f != null) && (f.a != null))
    {
      f = f.a;
      e = f.length;
      g = f.b;
      if (r() <= 0) {
        break label277;
      }
      C();
      if (!o) {
        break label236;
      }
      i1 = E();
      a = i1;
      b = i();
      c = g;
      d = new int[g];
      i2 = 0;
      if (i2 >= g) {
        break label295;
      }
      if (!o) {
        break label244;
      }
      i3 = h[i2].b(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.d();
      }
    }
    for (;;)
    {
      d[i2] = i1;
      i2 += 1;
      break label167;
      e = 0;
      break;
      label236:
      i1 = F();
      break label130;
      label244:
      i3 = h[i2].a(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.c();
      }
    }
    label277:
    a = -1;
    b = -1;
    c = 0;
    label295:
    return localSavedState;
  }
  
  public void c(int paramInt)
  {
    if ((t != null) && (t.a != paramInt)) {
      t.b();
    }
    d = paramInt;
    e = Integer.MIN_VALUE;
    l();
  }
  
  public void c(RecyclerView.n paramn, RecyclerView.r paramr)
  {
    int i2 = 0;
    C();
    a locala = y;
    locala.a();
    if (((t != null) || (d != -1)) && (paramr.e() == 0))
    {
      c(paramn);
      return;
    }
    if (t != null) {
      a(locala);
    }
    for (;;)
    {
      a(paramr, locala);
      if ((t == null) && ((c != o) || (g() != p)))
      {
        f.a();
        d = true;
      }
      if ((r() <= 0) || ((t != null) && (t.c >= 1))) {
        break label243;
      }
      if (!d) {
        break;
      }
      i1 = 0;
      while (i1 < g)
      {
        h[i1].e();
        if (b != Integer.MIN_VALUE) {
          h[i1].c(b);
        }
        i1 += 1;
      }
      D();
      c = c;
    }
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].a(c, b);
      i1 += 1;
    }
    label243:
    a(paramn);
    z = false;
    h();
    a(a, paramr);
    if (c)
    {
      a(-1);
      a(paramn, k, paramr);
      a(1);
      k.b = (a + k.c);
      a(paramn, k, paramr);
      if (r() > 0)
      {
        if (!c) {
          break label511;
        }
        a(paramn, paramr, true);
        b(paramn, paramr, false);
      }
    }
    for (;;)
    {
      if (!paramr.a())
      {
        i1 = i2;
        if (n != 0)
        {
          i1 = i2;
          if (r() > 0) {
            if (!z)
            {
              i1 = i2;
              if (f() == null) {}
            }
            else
            {
              i1 = 1;
            }
          }
        }
        if (i1 != 0)
        {
          b(B);
          a(B);
        }
        d = -1;
        e = Integer.MIN_VALUE;
      }
      o = c;
      p = g();
      t = null;
      return;
      a(1);
      a(paramn, k, paramr);
      a(-1);
      k.b = (a + k.c);
      a(paramn, k, paramr);
      break;
      label511:
      b(paramn, paramr, true);
      a(paramn, paramr, false);
    }
  }
  
  public int d(RecyclerView.r paramr)
  {
    return h(paramr);
  }
  
  public boolean d()
  {
    return i == 0;
  }
  
  public int e(RecyclerView.r paramr)
  {
    return h(paramr);
  }
  
  public boolean e()
  {
    return i == 1;
  }
  
  public int f(RecyclerView.r paramr)
  {
    return i(paramr);
  }
  
  View f()
  {
    int i1 = r() - 1;
    BitSet localBitSet = new BitSet(g);
    localBitSet.set(0, g, true);
    int i2;
    int i3;
    if ((i == 1) && (g()))
    {
      i2 = 1;
      if (!c) {
        break label128;
      }
      i3 = -1;
      label57:
      if (i1 >= i3) {
        break label137;
      }
    }
    int i5;
    View localView;
    LayoutParams localLayoutParams;
    label128:
    label137:
    for (int i4 = 1;; i4 = -1)
    {
      i5 = i1;
      if (i5 == i3) {
        break label343;
      }
      localView = f(i5);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (!localBitSet.get(e.d)) {
        break label156;
      }
      if (!a(e)) {
        break label143;
      }
      return localView;
      i2 = -1;
      break;
      i3 = i1 + 1;
      i1 = 0;
      break label57;
    }
    label143:
    localBitSet.clear(e.d);
    label156:
    if (f) {}
    label275:
    label337:
    label341:
    label343:
    label345:
    label348:
    for (;;)
    {
      i5 += i4;
      break;
      if (i5 + i4 != i3)
      {
        Object localObject = f(i5 + i4);
        int i6;
        if (c)
        {
          i1 = a.b(localView);
          i6 = a.b((View)localObject);
          if (i1 < i6) {
            return localView;
          }
          if (i1 != i6) {
            break label345;
          }
          i1 = 1;
        }
        for (;;)
        {
          if (i1 == 0) {
            break label348;
          }
          localObject = (LayoutParams)((View)localObject).getLayoutParams();
          if (e.d - e.d < 0)
          {
            i1 = 1;
            if (i2 >= 0) {
              break label337;
            }
          }
          for (i6 = 1;; i6 = 0)
          {
            if (i1 == i6) {
              break label341;
            }
            return localView;
            i1 = a.a(localView);
            i6 = a.a((View)localObject);
            if (i1 > i6) {
              return localView;
            }
            if (i1 != i6) {
              break label345;
            }
            i1 = 1;
            break;
            i1 = 0;
            break label275;
          }
          break;
          return null;
          i1 = 0;
        }
      }
    }
  }
  
  public int g(RecyclerView.r paramr)
  {
    return i(paramr);
  }
  
  public void g(int paramInt)
  {
    super.g(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  boolean g()
  {
    return p() == 1;
  }
  
  void h()
  {
    j = (b.f() / g);
    u = View.MeasureSpec.makeMeasureSpec(b.f(), 1073741824);
    if (i == 1)
    {
      v = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      w = View.MeasureSpec.makeMeasureSpec(0, 0);
      return;
    }
    w = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
    v = View.MeasureSpec.makeMeasureSpec(0, 0);
  }
  
  public void h(int paramInt)
  {
    super.h(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  int i()
  {
    if (c) {}
    for (View localView = b(true, true); localView == null; localView = a(true, true)) {
      return -1;
    }
    return d(localView);
  }
  
  public void i(int paramInt)
  {
    if (paramInt == 0) {
      B();
    }
  }
  
  boolean j()
  {
    boolean bool2 = true;
    int i2 = h[0].b(Integer.MIN_VALUE);
    int i1 = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < g)
      {
        if (h[i1].b(Integer.MIN_VALUE) != i2) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  boolean k()
  {
    boolean bool2 = true;
    int i2 = h[0].a(Integer.MIN_VALUE);
    int i1 = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < g)
      {
        if (h[i1].a(Integer.MIN_VALUE) != i2) {
          bool1 = false;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    StaggeredGridLayoutManager.b e;
    boolean f;
    
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
    
    public final int a()
    {
      if (e == null) {
        return -1;
      }
      return e.d;
    }
  }
  
  static class LazySpanLookup
  {
    int[] a;
    List<FullSpanItem> b;
    
    private void c(int paramInt1, int paramInt2)
    {
      if (b == null) {
        return;
      }
      int i = b.size() - 1;
      label20:
      FullSpanItem localFullSpanItem;
      if (i >= 0)
      {
        localFullSpanItem = (FullSpanItem)b.get(i);
        if (a >= paramInt1) {
          break label55;
        }
      }
      for (;;)
      {
        i -= 1;
        break label20;
        break;
        label55:
        if (a < paramInt1 + paramInt2) {
          b.remove(i);
        } else {
          a -= paramInt2;
        }
      }
    }
    
    private void d(int paramInt1, int paramInt2)
    {
      if (b == null) {
        return;
      }
      int i = b.size() - 1;
      label20:
      FullSpanItem localFullSpanItem;
      if (i >= 0)
      {
        localFullSpanItem = (FullSpanItem)b.get(i);
        if (a >= paramInt1) {
          break label55;
        }
      }
      for (;;)
      {
        i -= 1;
        break label20;
        break;
        label55:
        a += paramInt2;
      }
    }
    
    private int g(int paramInt)
    {
      if (b == null) {
        return -1;
      }
      FullSpanItem localFullSpanItem = f(paramInt);
      if (localFullSpanItem != null) {
        b.remove(localFullSpanItem);
      }
      int j = b.size();
      int i = 0;
      if (i < j) {
        if (b.get(i)).a < paramInt) {}
      }
      for (;;)
      {
        if (i != -1)
        {
          localFullSpanItem = (FullSpanItem)b.get(i);
          b.remove(i);
          return a;
          i += 1;
          break;
        }
        return -1;
        i = -1;
      }
    }
    
    int a(int paramInt)
    {
      if (b != null)
      {
        int i = b.size() - 1;
        while (i >= 0)
        {
          if (b.get(i)).a >= paramInt) {
            b.remove(i);
          }
          i -= 1;
        }
      }
      return b(paramInt);
    }
    
    public FullSpanItem a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      Object localObject;
      if (b == null)
      {
        localObject = null;
        return (FullSpanItem)localObject;
      }
      int j = b.size();
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label117;
        }
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        if (a >= paramInt2) {
          return null;
        }
        if (a >= paramInt1)
        {
          localObject = localFullSpanItem;
          if (paramInt3 == 0) {
            break;
          }
          localObject = localFullSpanItem;
          if (b == paramInt3) {
            break;
          }
          if (paramBoolean)
          {
            localObject = localFullSpanItem;
            if (d) {
              break;
            }
          }
        }
        i += 1;
      }
      label117:
      return null;
    }
    
    void a()
    {
      if (a != null) {
        Arrays.fill(a, -1);
      }
      b = null;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      if ((a == null) || (paramInt1 >= a.length)) {
        return;
      }
      e(paramInt1 + paramInt2);
      System.arraycopy(a, paramInt1 + paramInt2, a, paramInt1, a.length - paramInt1 - paramInt2);
      Arrays.fill(a, a.length - paramInt2, a.length, -1);
      c(paramInt1, paramInt2);
    }
    
    void a(int paramInt, StaggeredGridLayoutManager.b paramb)
    {
      e(paramInt);
      a[paramInt] = d;
    }
    
    public void a(FullSpanItem paramFullSpanItem)
    {
      if (b == null) {
        b = new ArrayList();
      }
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        if (a == a) {
          b.remove(i);
        }
        if (a >= a)
        {
          b.add(i, paramFullSpanItem);
          return;
        }
        i += 1;
      }
      b.add(paramFullSpanItem);
    }
    
    int b(int paramInt)
    {
      if (a == null) {}
      while (paramInt >= a.length) {
        return -1;
      }
      int i = g(paramInt);
      if (i == -1)
      {
        Arrays.fill(a, paramInt, a.length, -1);
        return a.length;
      }
      Arrays.fill(a, paramInt, i + 1, -1);
      return i + 1;
    }
    
    void b(int paramInt1, int paramInt2)
    {
      if ((a == null) || (paramInt1 >= a.length)) {
        return;
      }
      e(paramInt1 + paramInt2);
      System.arraycopy(a, paramInt1, a, paramInt1 + paramInt2, a.length - paramInt1 - paramInt2);
      Arrays.fill(a, paramInt1, paramInt1 + paramInt2, -1);
      d(paramInt1, paramInt2);
    }
    
    int c(int paramInt)
    {
      if ((a == null) || (paramInt >= a.length)) {
        return -1;
      }
      return a[paramInt];
    }
    
    int d(int paramInt)
    {
      int i = a.length;
      while (i <= paramInt) {
        i *= 2;
      }
      return i;
    }
    
    void e(int paramInt)
    {
      if (a == null)
      {
        a = new int[Math.max(paramInt, 10) + 1];
        Arrays.fill(a, -1);
      }
      while (paramInt < a.length) {
        return;
      }
      int[] arrayOfInt = a;
      a = new int[d(paramInt)];
      System.arraycopy(arrayOfInt, 0, a, 0, arrayOfInt.length);
      Arrays.fill(a, arrayOfInt.length, a.length, -1);
    }
    
    public FullSpanItem f(int paramInt)
    {
      Object localObject;
      if (b == null)
      {
        localObject = null;
        return (FullSpanItem)localObject;
      }
      int i = b.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label61;
        }
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        localObject = localFullSpanItem;
        if (a == paramInt) {
          break;
        }
        i -= 1;
      }
      label61:
      return null;
    }
    
    static class FullSpanItem
      implements Parcelable
    {
      public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator()
      {
        public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(Parcel paramAnonymousParcel)
        {
          return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(paramAnonymousParcel);
        }
        
        public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] a(int paramAnonymousInt)
        {
          return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[paramAnonymousInt];
        }
      };
      int a;
      int b;
      int[] c;
      boolean d;
      
      public FullSpanItem() {}
      
      public FullSpanItem(Parcel paramParcel)
      {
        a = paramParcel.readInt();
        b = paramParcel.readInt();
        if (paramParcel.readInt() == 1) {}
        for (;;)
        {
          d = bool;
          int i = paramParcel.readInt();
          if (i > 0)
          {
            c = new int[i];
            paramParcel.readIntArray(c);
          }
          return;
          bool = false;
        }
      }
      
      int a(int paramInt)
      {
        if (c == null) {
          return 0;
        }
        return c[paramInt];
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      public String toString()
      {
        return "FullSpanItem{mPosition=" + a + ", mGapDir=" + b + ", mHasUnwantedGapAfter=" + d + ", mGapPerSpan=" + Arrays.toString(c) + '}';
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        paramParcel.writeInt(a);
        paramParcel.writeInt(b);
        if (d) {}
        for (paramInt = 1;; paramInt = 0)
        {
          paramParcel.writeInt(paramInt);
          if ((c == null) || (c.length <= 0)) {
            break;
          }
          paramParcel.writeInt(c.length);
          paramParcel.writeIntArray(c);
          return;
        }
        paramParcel.writeInt(0);
      }
    }
  }
  
  static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public StaggeredGridLayoutManager.SavedState a(Parcel paramAnonymousParcel)
      {
        return new StaggeredGridLayoutManager.SavedState(paramAnonymousParcel);
      }
      
      public StaggeredGridLayoutManager.SavedState[] a(int paramAnonymousInt)
      {
        return new StaggeredGridLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    int a;
    int b;
    int c;
    int[] d;
    int e;
    int[] f;
    List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> g;
    boolean h;
    boolean i;
    boolean j;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
      if (c > 0)
      {
        d = new int[c];
        paramParcel.readIntArray(d);
      }
      e = paramParcel.readInt();
      if (e > 0)
      {
        f = new int[e];
        paramParcel.readIntArray(f);
      }
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        h = bool1;
        if (paramParcel.readInt() != 1) {
          break label152;
        }
        bool1 = true;
        label113:
        i = bool1;
        if (paramParcel.readInt() != 1) {
          break label157;
        }
      }
      label152:
      label157:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        j = bool1;
        g = paramParcel.readArrayList(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.class.getClassLoader());
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label113;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      c = c;
      a = a;
      b = b;
      d = d;
      e = e;
      f = f;
      h = h;
      i = i;
      j = j;
      g = g;
    }
    
    void a()
    {
      d = null;
      c = 0;
      e = 0;
      f = null;
      g = null;
    }
    
    void b()
    {
      d = null;
      c = 0;
      a = -1;
      b = -1;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int k = 1;
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      paramParcel.writeInt(c);
      if (c > 0) {
        paramParcel.writeIntArray(d);
      }
      paramParcel.writeInt(e);
      if (e > 0) {
        paramParcel.writeIntArray(f);
      }
      if (h)
      {
        paramInt = 1;
        paramParcel.writeInt(paramInt);
        if (!i) {
          break label120;
        }
        paramInt = 1;
        label87:
        paramParcel.writeInt(paramInt);
        if (!j) {
          break label125;
        }
      }
      label120:
      label125:
      for (paramInt = k;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        paramParcel.writeList(g);
        return;
        paramInt = 0;
        break;
        paramInt = 0;
        break label87;
      }
    }
  }
  
  private class a
  {
    int a;
    int b;
    boolean c;
    boolean d;
    
    void a()
    {
      a = -1;
      b = Integer.MIN_VALUE;
      c = false;
      d = false;
    }
    
    void a(int paramInt)
    {
      if (c)
      {
        b = (e.a.d() - paramInt);
        return;
      }
      b = (e.a.c() + paramInt);
    }
    
    void b()
    {
      if (c) {}
      for (int i = e.a.d();; i = e.a.c())
      {
        b = i;
        return;
      }
    }
  }
  
  class b
  {
    int a;
    int b;
    int c;
    final int d;
    private ArrayList<View> f;
    
    int a(int paramInt)
    {
      if (a != Integer.MIN_VALUE) {
        paramInt = a;
      }
      while (f.size() == 0) {
        return paramInt;
      }
      a();
      return a;
    }
    
    void a()
    {
      Object localObject = (View)f.get(0);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c((View)localObject);
      a = e.a.a((View)localObject);
      if (f)
      {
        localObject = e.f.f(localLayoutParams.e());
        if ((localObject != null) && (b == -1)) {
          a -= ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(d);
        }
      }
    }
    
    void a(View paramView)
    {
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(paramView);
      e = this;
      f.add(0, paramView);
      a = Integer.MIN_VALUE;
      if (f.size() == 1) {
        b = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.c()) || (localLayoutParams.d())) {
        c += e.a.c(paramView);
      }
    }
    
    void a(boolean paramBoolean, int paramInt)
    {
      int i;
      if (paramBoolean)
      {
        i = b(Integer.MIN_VALUE);
        e();
        if (i != Integer.MIN_VALUE) {
          break label32;
        }
      }
      label32:
      while (((paramBoolean) && (i < e.a.d())) || ((!paramBoolean) && (i > e.a.c())))
      {
        return;
        i = a(Integer.MIN_VALUE);
        break;
      }
      int j = i;
      if (paramInt != Integer.MIN_VALUE) {
        j = i + paramInt;
      }
      b = j;
      a = j;
    }
    
    int b()
    {
      if (a != Integer.MIN_VALUE) {
        return a;
      }
      a();
      return a;
    }
    
    int b(int paramInt)
    {
      if (b != Integer.MIN_VALUE) {
        paramInt = b;
      }
      while (f.size() == 0) {
        return paramInt;
      }
      c();
      return b;
    }
    
    void b(View paramView)
    {
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(paramView);
      e = this;
      f.add(paramView);
      b = Integer.MIN_VALUE;
      if (f.size() == 1) {
        a = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.c()) || (localLayoutParams.d())) {
        c += e.a.c(paramView);
      }
    }
    
    StaggeredGridLayoutManager.LayoutParams c(View paramView)
    {
      return (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    }
    
    void c()
    {
      Object localObject = (View)f.get(f.size() - 1);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c((View)localObject);
      b = e.a.b((View)localObject);
      if (f)
      {
        localObject = e.f.f(localLayoutParams.e());
        if ((localObject != null) && (b == 1))
        {
          int i = b;
          b = (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(d) + i);
        }
      }
    }
    
    void c(int paramInt)
    {
      a = paramInt;
      b = paramInt;
    }
    
    int d()
    {
      if (b != Integer.MIN_VALUE) {
        return b;
      }
      c();
      return b;
    }
    
    void d(int paramInt)
    {
      if (a != Integer.MIN_VALUE) {
        a += paramInt;
      }
      if (b != Integer.MIN_VALUE) {
        b += paramInt;
      }
    }
    
    void e()
    {
      f.clear();
      f();
      c = 0;
    }
    
    void f()
    {
      a = Integer.MIN_VALUE;
      b = Integer.MIN_VALUE;
    }
    
    void g()
    {
      int i = f.size();
      View localView = (View)f.remove(i - 1);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(localView);
      e = null;
      if ((localLayoutParams.c()) || (localLayoutParams.d())) {
        c -= e.a.c(localView);
      }
      if (i == 1) {
        a = Integer.MIN_VALUE;
      }
      b = Integer.MIN_VALUE;
    }
    
    void h()
    {
      View localView = (View)f.remove(0);
      StaggeredGridLayoutManager.LayoutParams localLayoutParams = c(localView);
      e = null;
      if (f.size() == 0) {
        b = Integer.MIN_VALUE;
      }
      if ((localLayoutParams.c()) || (localLayoutParams.d())) {
        c -= e.a.c(localView);
      }
      a = Integer.MIN_VALUE;
    }
    
    public int i()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */