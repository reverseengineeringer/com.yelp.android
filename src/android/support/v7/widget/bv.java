package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class bv
{
  final ArrayList<ce> a = new ArrayList();
  final ArrayList<ce> b = new ArrayList();
  private ArrayList<ce> d = null;
  private final List<ce> e = Collections.unmodifiableList(a);
  private int f = 2;
  private bu g;
  private cc h;
  
  public bv(RecyclerView paramRecyclerView) {}
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, true);
      }
      i -= 1;
    }
    if (!paramBoolean) {
      return;
    }
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private void d(View paramView)
  {
    if ((RecyclerView.m(c) != null) && (RecyclerView.m(c).isEnabled()))
    {
      if (android.support.v4.view.ce.e(paramView) == 0) {
        android.support.v4.view.ce.c(paramView, 1);
      }
      if (!android.support.v4.view.ce.b(paramView)) {
        android.support.v4.view.ce.a(paramView, RecyclerView.n(c).b());
      }
    }
  }
  
  private void f(ce paramce)
  {
    if ((a instanceof ViewGroup)) {
      a((ViewGroup)a, false);
    }
  }
  
  ce a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = 0;
    int k = a.size();
    int i = 0;
    Object localObject;
    if (i < k)
    {
      localObject = (ce)a.get(i);
      if ((((ce)localObject).i()) || (((ce)localObject).d() != paramInt1) || (((ce)localObject).l()) || ((!cb.d(c.e)) && (((ce)localObject).p()))) {
        break label269;
      }
      if ((paramInt2 != -1) && (((ce)localObject).f() != paramInt2)) {
        Log.e("RecyclerView", "Scrap view for position " + paramInt1 + " isn't dirty but has" + " wrong view type! (found " + ((ce)localObject).f() + " but expected " + paramInt2 + ")");
      }
    }
    else
    {
      if (!paramBoolean)
      {
        localObject = c.c.a(paramInt1, paramInt2);
        if (localObject != null) {
          c.d.c(c.a((View)localObject));
        }
      }
      i = b.size();
      paramInt2 = j;
    }
    for (;;)
    {
      if (paramInt2 >= i) {
        break label285;
      }
      localObject = (ce)b.get(paramInt2);
      if ((!((ce)localObject).l()) && (((ce)localObject).d() == paramInt1))
      {
        if (!paramBoolean) {
          b.remove(paramInt2);
        }
        return (ce)localObject;
        ((ce)localObject).a(32);
        return (ce)localObject;
        label269:
        i += 1;
        break;
      }
      paramInt2 += 1;
    }
    label285:
    return null;
  }
  
  ce a(long paramLong, int paramInt, boolean paramBoolean)
  {
    int i = a.size() - 1;
    ce localce2;
    ce localce1;
    while (i >= 0)
    {
      localce2 = (ce)a.get(i);
      if ((localce2.e() == paramLong) && (!localce2.i()))
      {
        if (paramInt == localce2.f())
        {
          localce2.a(32);
          localce1 = localce2;
          if (localce2.p())
          {
            localce1 = localce2;
            if (!c.e.a())
            {
              localce2.a(2, 14);
              localce1 = localce2;
            }
          }
          return localce1;
        }
        if (!paramBoolean)
        {
          a.remove(i);
          c.removeDetachedView(a, false);
          b(a);
        }
      }
      i -= 1;
    }
    i = b.size() - 1;
    for (;;)
    {
      if (i < 0) {
        break label245;
      }
      localce2 = (ce)b.get(i);
      if (localce2.e() == paramLong)
      {
        if (paramInt == localce2.f())
        {
          localce1 = localce2;
          if (paramBoolean) {
            break;
          }
          b.remove(i);
          return localce2;
        }
        if (!paramBoolean) {
          d(i);
        }
      }
      i -= 1;
    }
    label245:
    return null;
  }
  
  View a(int paramInt, boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramInt < 0) || (paramInt >= c.e.e())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + c.e.e());
    }
    Object localObject2;
    int i;
    if (c.e.a())
    {
      localObject2 = f(paramInt);
      if (localObject2 != null) {
        i = 1;
      }
    }
    for (;;)
    {
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = a(paramInt, -1, paramBoolean);
        localObject1 = localObject2;
        if (localObject2 != null) {
          if (!a((ce)localObject2)) {
            if (!paramBoolean)
            {
              ((ce)localObject2).a(4);
              if (((ce)localObject2).g())
              {
                c.removeDetachedView(a, false);
                ((ce)localObject2).h();
                label174:
                b((ce)localObject2);
              }
            }
            else
            {
              localObject1 = null;
            }
          }
        }
      }
      for (;;)
      {
        Object localObject3 = localObject1;
        int k = i;
        int j;
        if (localObject1 == null)
        {
          k = c.b.a(paramInt);
          if ((k < 0) || (k >= RecyclerView.f(c).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + k + ")." + "state:" + c.e.e());
            i = 0;
            break;
            if (!((ce)localObject2).i()) {
              break label174;
            }
            ((ce)localObject2).j();
            break label174;
            i = 1;
            localObject1 = localObject2;
            continue;
          }
          int m = RecyclerView.f(c).a(k);
          localObject2 = localObject1;
          j = i;
          if (RecyclerView.f(c).b())
          {
            localObject1 = a(RecyclerView.f(c).b(k), m, paramBoolean);
            localObject2 = localObject1;
            j = i;
            if (localObject1 != null)
            {
              b = k;
              j = 1;
              localObject2 = localObject1;
            }
          }
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = localObject2;
            if (h != null)
            {
              localObject3 = h.a(this, paramInt, m);
              localObject1 = localObject2;
              if (localObject3 != null)
              {
                localObject2 = c.a((View)localObject3);
                if (localObject2 == null) {
                  throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                }
                localObject1 = localObject2;
                if (((ce)localObject2).c()) {
                  throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                }
              }
            }
          }
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject1 = f().a(m);
            localObject2 = localObject1;
            if (localObject1 != null)
            {
              ((ce)localObject1).s();
              localObject2 = localObject1;
              if (RecyclerView.r())
              {
                f((ce)localObject1);
                localObject2 = localObject1;
              }
            }
          }
          localObject3 = localObject2;
          k = j;
          if (localObject2 == null)
          {
            localObject2 = RecyclerView.f(c).b(c, m);
            i = j;
          }
        }
        for (;;)
        {
          if ((c.e.a()) && (((ce)localObject2).o()))
          {
            f = paramInt;
            paramInt = 0;
          }
          for (;;)
          {
            localObject1 = a.getLayoutParams();
            if (localObject1 == null)
            {
              localObject1 = (RecyclerView.LayoutParams)c.generateDefaultLayoutParams();
              a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              label648:
              a = ((ce)localObject2);
              if ((i == 0) || (paramInt == 0)) {
                break label820;
              }
            }
            label820:
            for (paramBoolean = bool;; paramBoolean = false)
            {
              d = paramBoolean;
              return a;
              if ((((ce)localObject2).o()) && (!((ce)localObject2).m()) && (!((ce)localObject2).l())) {
                break label825;
              }
              j = c.b.a(paramInt);
              i = c;
              RecyclerView.f(c).b((ce)localObject2, j);
              d(a);
              if (c.e.a()) {
                f = paramInt;
              }
              paramInt = 1;
              break;
              if (!c.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
              {
                localObject1 = (RecyclerView.LayoutParams)c.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
                a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
                break label648;
              }
              localObject1 = (RecyclerView.LayoutParams)localObject1;
              break label648;
            }
            label825:
            paramInt = 0;
          }
          i = k;
          localObject2 = localObject3;
        }
      }
      localObject2 = null;
      i = 0;
    }
  }
  
  public void a()
  {
    a.clear();
    c();
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
    int i = b.size() - 1;
    while ((i >= 0) && (b.size() > paramInt))
    {
      d(i);
      i -= 1;
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    int i;
    int j;
    int k;
    int m;
    label25:
    ce localce;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      int n = b.size();
      m = 0;
      if (m >= n) {
        return;
      }
      localce = (ce)b.get(m);
      if ((localce != null) && (b >= k) && (b <= j)) {
        break label91;
      }
    }
    for (;;)
    {
      m += 1;
      break label25;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label91:
      if (b == paramInt1) {
        localce.a(paramInt2 - paramInt1, false);
      } else {
        localce.a(i, false);
      }
    }
  }
  
  void a(bi parambi1, bi parambi2, boolean paramBoolean)
  {
    a();
    f().a(parambi1, parambi2, paramBoolean);
  }
  
  void a(bu parambu)
  {
    if (g != null) {
      g.b();
    }
    g = parambu;
    if (parambu != null) {
      g.a(c.getAdapter());
    }
  }
  
  void a(cc paramcc)
  {
    h = paramcc;
  }
  
  public void a(View paramView)
  {
    ce localce = RecyclerView.b(paramView);
    if (localce.q()) {
      c.removeDetachedView(paramView, false);
    }
    if (localce.g()) {
      localce.h();
    }
    for (;;)
    {
      b(localce);
      return;
      if (localce.i()) {
        localce.j();
      }
    }
  }
  
  boolean a(ce paramce)
  {
    if (paramce.p()) {}
    do
    {
      return true;
      if ((b < 0) || (b >= RecyclerView.f(c).a())) {
        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramce);
      }
      if ((!c.e.a()) && (RecyclerView.f(c).a(b) != paramce.f())) {
        return false;
      }
    } while ((!RecyclerView.f(c).b()) || (paramce.e() == RecyclerView.f(c).b(b)));
    return false;
  }
  
  public int b(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= c.e.e())) {
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State " + "item count is " + c.e.e());
    }
    if (!c.e.a()) {
      return paramInt;
    }
    return c.b.a(paramInt);
  }
  
  public List<ce> b()
  {
    return e;
  }
  
  void b(int paramInt1, int paramInt2)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      ce localce = (ce)b.get(i);
      if ((localce != null) && (localce.d() >= paramInt1)) {
        localce.a(paramInt2, true);
      }
      i += 1;
    }
  }
  
  void b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = b.size() - 1;
    if (i >= 0)
    {
      ce localce = (ce)b.get(i);
      if (localce != null)
      {
        if (localce.d() < paramInt1 + paramInt2) {
          break label63;
        }
        localce.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i -= 1;
        break;
        label63:
        if (localce.d() >= paramInt1)
        {
          localce.a(8);
          d(i);
        }
      }
    }
  }
  
  void b(ce paramce)
  {
    boolean bool = true;
    int j = 0;
    if ((paramce.g()) || (a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Scrapped or attached views may not be recycled. isScrap:").append(paramce.g()).append(" isAttached:");
      if (a.getParent() != null) {}
      for (;;)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (paramce.q()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramce);
    }
    if (paramce.c()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    bool = ce.a(paramce);
    int i;
    if ((RecyclerView.f(c) != null) && (bool) && (RecyclerView.f(c).b(paramce)))
    {
      i = 1;
      if ((i == 0) && (!paramce.t())) {
        break label304;
      }
      if ((paramce.l()) || (paramce.p()) || (paramce.n())) {
        break label299;
      }
      i = b.size();
      if ((i == f) && (i > 0)) {
        d(0);
      }
      if (i >= f) {
        break label299;
      }
      b.add(paramce);
      i = 1;
      label250:
      if (i != 0) {
        break label296;
      }
      c(paramce);
      j = 1;
    }
    for (;;)
    {
      c.e.a(paramce);
      if ((i == 0) && (j == 0) && (bool)) {
        i = null;
      }
      return;
      i = 0;
      break;
      label296:
      continue;
      label299:
      i = 0;
      break label250;
      label304:
      i = 0;
    }
  }
  
  void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    ce.a(paramView, null);
    paramView.j();
    b(paramView);
  }
  
  public View c(int paramInt)
  {
    return a(paramInt, false);
  }
  
  void c()
  {
    int i = b.size() - 1;
    while (i >= 0)
    {
      d(i);
      i -= 1;
    }
    b.clear();
  }
  
  void c(int paramInt1, int paramInt2)
  {
    int j = b.size();
    int i = 0;
    if (i < j)
    {
      ce localce = (ce)b.get(i);
      if (localce == null) {}
      for (;;)
      {
        i += 1;
        break;
        int k = localce.d();
        if ((k >= paramInt1) && (k < paramInt1 + paramInt2)) {
          localce.a(2);
        }
      }
    }
  }
  
  void c(ce paramce)
  {
    android.support.v4.view.ce.a(a, null);
    e(paramce);
    i = null;
    f().a(paramce);
  }
  
  void c(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    paramView.a(this);
    if ((!paramView.n()) || (!RecyclerView.h(c)))
    {
      if ((paramView.l()) && (!paramView.p()) && (!RecyclerView.f(c).b())) {
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
      }
      a.add(paramView);
      return;
    }
    if (d == null) {
      d = new ArrayList();
    }
    d.add(paramView);
  }
  
  int d()
  {
    return a.size();
  }
  
  void d(int paramInt)
  {
    c((ce)b.get(paramInt));
    b.remove(paramInt);
  }
  
  void d(ce paramce)
  {
    if ((!paramce.n()) || (!RecyclerView.h(c)) || (d == null)) {
      a.remove(paramce);
    }
    for (;;)
    {
      ce.a(paramce, null);
      paramce.j();
      return;
      d.remove(paramce);
    }
  }
  
  View e(int paramInt)
  {
    return a.get(paramInt)).a;
  }
  
  void e()
  {
    a.clear();
  }
  
  void e(ce paramce)
  {
    if (RecyclerView.o(c) != null) {
      RecyclerView.o(c).a(paramce);
    }
    if (RecyclerView.f(c) != null) {
      RecyclerView.f(c).a(paramce);
    }
    if (c.e != null) {
      c.e.a(paramce);
    }
  }
  
  bu f()
  {
    if (g == null) {
      g = new bu();
    }
    return g;
  }
  
  ce f(int paramInt)
  {
    int j = 0;
    int k;
    if (d != null)
    {
      k = d.size();
      if (k != 0) {}
    }
    else
    {
      return null;
    }
    int i = 0;
    ce localce;
    while (i < k)
    {
      localce = (ce)d.get(i);
      if ((!localce.i()) && (localce.d() == paramInt))
      {
        localce.a(32);
        return localce;
      }
      i += 1;
    }
    if (RecyclerView.f(c).b())
    {
      paramInt = c.b.a(paramInt);
      if ((paramInt > 0) && (paramInt < RecyclerView.f(c).a()))
      {
        long l = RecyclerView.f(c).b(paramInt);
        paramInt = j;
        while (paramInt < k)
        {
          localce = (ce)d.get(paramInt);
          if ((!localce.i()) && (localce.e() == l))
          {
            localce.a(32);
            return localce;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }
  
  void g()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      ce localce = (ce)b.get(i);
      if (localce != null) {
        localce.a(512);
      }
      i += 1;
    }
  }
  
  void h()
  {
    int j;
    int i;
    if ((RecyclerView.f(c) != null) && (RecyclerView.f(c).b()))
    {
      j = b.size();
      i = 0;
    }
    while (i < j)
    {
      ce localce = (ce)b.get(i);
      if (localce != null) {
        localce.a(6);
      }
      i += 1;
      continue;
      c();
    }
  }
  
  void i()
  {
    int j = 0;
    int k = b.size();
    int i = 0;
    while (i < k)
    {
      ((ce)b.get(i)).a();
      i += 1;
    }
    k = a.size();
    i = 0;
    while (i < k)
    {
      ((ce)a.get(i)).a();
      i += 1;
    }
    if (d != null)
    {
      k = d.size();
      i = j;
      while (i < k)
      {
        ((ce)d.get(i)).a();
        i += 1;
      }
    }
  }
  
  void j()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)b.get(i)).a.getLayoutParams();
      if (localLayoutParams != null) {
        c = true;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */