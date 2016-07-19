package android.support.v7.widget;

import android.support.v4.view.ai;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class RecyclerView$n
{
  final ArrayList<RecyclerView.u> a = new ArrayList();
  final ArrayList<RecyclerView.u> b = new ArrayList();
  private ArrayList<RecyclerView.u> d = null;
  private final List<RecyclerView.u> e = Collections.unmodifiableList(a);
  private int f = 2;
  private RecyclerView.m g;
  private RecyclerView.s h;
  
  public RecyclerView$n(RecyclerView paramRecyclerView) {}
  
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
    if (c.i())
    {
      if (ai.e(paramView) == 0) {
        ai.c(paramView, 1);
      }
      if (!ai.b(paramView)) {
        ai.a(paramView, RecyclerView.m(c).b());
      }
    }
  }
  
  private void f(RecyclerView.u paramu)
  {
    if ((a instanceof ViewGroup)) {
      a((ViewGroup)a, false);
    }
  }
  
  RecyclerView.u a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = 0;
    int k = a.size();
    int i = 0;
    Object localObject;
    if (i < k)
    {
      localObject = (RecyclerView.u)a.get(i);
      if ((((RecyclerView.u)localObject).i()) || (((RecyclerView.u)localObject).d() != paramInt1) || (((RecyclerView.u)localObject).l()) || ((!RecyclerView.r.d(c.e)) && (((RecyclerView.u)localObject).p()))) {
        break label269;
      }
      if ((paramInt2 != -1) && (((RecyclerView.u)localObject).f() != paramInt2)) {
        Log.e("RecyclerView", "Scrap view for position " + paramInt1 + " isn't dirty but has" + " wrong view type! (found " + ((RecyclerView.u)localObject).f() + " but expected " + paramInt2 + ")");
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
      localObject = (RecyclerView.u)b.get(paramInt2);
      if ((!((RecyclerView.u)localObject).l()) && (((RecyclerView.u)localObject).d() == paramInt1))
      {
        if (!paramBoolean) {
          b.remove(paramInt2);
        }
        return (RecyclerView.u)localObject;
        ((RecyclerView.u)localObject).b(32);
        return (RecyclerView.u)localObject;
        label269:
        i += 1;
        break;
      }
      paramInt2 += 1;
    }
    label285:
    return null;
  }
  
  RecyclerView.u a(long paramLong, int paramInt, boolean paramBoolean)
  {
    int i = a.size() - 1;
    RecyclerView.u localu2;
    RecyclerView.u localu1;
    while (i >= 0)
    {
      localu2 = (RecyclerView.u)a.get(i);
      if ((localu2.e() == paramLong) && (!localu2.i()))
      {
        if (paramInt == localu2.f())
        {
          localu2.b(32);
          localu1 = localu2;
          if (localu2.p())
          {
            localu1 = localu2;
            if (!c.e.a())
            {
              localu2.a(2, 14);
              localu1 = localu2;
            }
          }
          return localu1;
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
      localu2 = (RecyclerView.u)b.get(i);
      if (localu2.e() == paramLong)
      {
        if (paramInt == localu2.f())
        {
          localu1 = localu2;
          if (paramBoolean) {
            break;
          }
          b.remove(i);
          return localu2;
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
          if (!a((RecyclerView.u)localObject2)) {
            if (!paramBoolean)
            {
              ((RecyclerView.u)localObject2).b(4);
              if (((RecyclerView.u)localObject2).g())
              {
                c.removeDetachedView(a, false);
                ((RecyclerView.u)localObject2).h();
                label174:
                b((RecyclerView.u)localObject2);
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
            if (!((RecyclerView.u)localObject2).i()) {
              break label174;
            }
            ((RecyclerView.u)localObject2).j();
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
                if (((RecyclerView.u)localObject2).c()) {
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
              ((RecyclerView.u)localObject1).u();
              localObject2 = localObject1;
              if (RecyclerView.s())
              {
                f((RecyclerView.u)localObject1);
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
          if ((c.e.a()) && (((RecyclerView.u)localObject2).o()))
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
              label645:
              a = ((RecyclerView.u)localObject2);
              if ((i == 0) || (paramInt == 0)) {
                break label817;
              }
            }
            label817:
            for (paramBoolean = bool;; paramBoolean = false)
            {
              d = paramBoolean;
              return a;
              if ((((RecyclerView.u)localObject2).o()) && (!((RecyclerView.u)localObject2).m()) && (!((RecyclerView.u)localObject2).l())) {
                break label822;
              }
              j = c.b.a(paramInt);
              k = c;
              RecyclerView.f(c).b((RecyclerView.u)localObject2, j);
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
                break label645;
              }
              localObject1 = (RecyclerView.LayoutParams)localObject1;
              break label645;
            }
            label822:
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
    RecyclerView.u localu;
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
      localu = (RecyclerView.u)b.get(m);
      if ((localu != null) && (b >= k) && (b <= j)) {
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
        localu.a(paramInt2 - paramInt1, false);
      } else {
        localu.a(i, false);
      }
    }
  }
  
  void a(RecyclerView.a parama1, RecyclerView.a parama2, boolean paramBoolean)
  {
    a();
    f().a(parama1, parama2, paramBoolean);
  }
  
  void a(RecyclerView.m paramm)
  {
    if (g != null) {
      g.b();
    }
    g = paramm;
    if (paramm != null) {
      g.a(c.getAdapter());
    }
  }
  
  void a(RecyclerView.s params)
  {
    h = params;
  }
  
  public void a(View paramView)
  {
    RecyclerView.u localu = RecyclerView.b(paramView);
    if (localu.q()) {
      c.removeDetachedView(paramView, false);
    }
    if (localu.g()) {
      localu.h();
    }
    for (;;)
    {
      b(localu);
      return;
      if (localu.i()) {
        localu.j();
      }
    }
  }
  
  boolean a(RecyclerView.u paramu)
  {
    if (paramu.p()) {}
    do
    {
      return true;
      if ((b < 0) || (b >= RecyclerView.f(c).a())) {
        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramu);
      }
      if ((!c.e.a()) && (RecyclerView.f(c).a(b) != paramu.f())) {
        return false;
      }
    } while ((!RecyclerView.f(c).b()) || (paramu.e() == RecyclerView.f(c).b(b)));
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
  
  public List<RecyclerView.u> b()
  {
    return e;
  }
  
  void b(int paramInt1, int paramInt2)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.u localu = (RecyclerView.u)b.get(i);
      if ((localu != null) && (localu.d() >= paramInt1)) {
        localu.a(paramInt2, true);
      }
      i += 1;
    }
  }
  
  void b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = b.size() - 1;
    if (i >= 0)
    {
      RecyclerView.u localu = (RecyclerView.u)b.get(i);
      if (localu != null)
      {
        if (localu.d() < paramInt1 + paramInt2) {
          break label63;
        }
        localu.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i -= 1;
        break;
        label63:
        if (localu.d() >= paramInt1)
        {
          localu.b(8);
          d(i);
        }
      }
    }
  }
  
  void b(RecyclerView.u paramu)
  {
    boolean bool = true;
    int j = 0;
    if ((paramu.g()) || (a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Scrapped or attached views may not be recycled. isScrap:").append(paramu.g()).append(" isAttached:");
      if (a.getParent() != null) {}
      for (;;)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (paramu.q()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramu);
    }
    if (paramu.c()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    bool = RecyclerView.u.c(paramu);
    int i;
    if ((RecyclerView.f(c) != null) && (bool) && (RecyclerView.f(c).b(paramu)))
    {
      i = 1;
      if ((i == 0) && (!paramu.v())) {
        break label292;
      }
      if (paramu.a(78)) {
        break label287;
      }
      i = b.size();
      if ((i == f) && (i > 0)) {
        d(0);
      }
      if (i >= f) {
        break label287;
      }
      b.add(paramu);
      i = 1;
      label238:
      if (i != 0) {
        break label284;
      }
      c(paramu);
      j = 1;
    }
    for (;;)
    {
      c.e.a(paramu);
      if ((i == 0) && (j == 0) && (bool)) {
        k = null;
      }
      return;
      i = 0;
      break;
      label284:
      continue;
      label287:
      i = 0;
      break label238;
      label292:
      i = 0;
    }
  }
  
  void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    RecyclerView.u.a(paramView, null);
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
    int i = b.size() - 1;
    if (i >= 0)
    {
      RecyclerView.u localu = (RecyclerView.u)b.get(i);
      if (localu == null) {}
      for (;;)
      {
        i -= 1;
        break;
        int j = localu.d();
        if ((j >= paramInt1) && (j < paramInt1 + paramInt2))
        {
          localu.b(2);
          d(i);
        }
      }
    }
  }
  
  void c(RecyclerView.u paramu)
  {
    ai.a(a, null);
    e(paramu);
    k = null;
    f().a(paramu);
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
    c((RecyclerView.u)b.get(paramInt));
    b.remove(paramInt);
  }
  
  void d(RecyclerView.u paramu)
  {
    if ((!paramu.n()) || (!RecyclerView.h(c)) || (d == null)) {
      a.remove(paramu);
    }
    for (;;)
    {
      RecyclerView.u.a(paramu, null);
      paramu.j();
      return;
      d.remove(paramu);
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
  
  void e(RecyclerView.u paramu)
  {
    if (RecyclerView.n(c) != null) {
      RecyclerView.n(c).a(paramu);
    }
    if (RecyclerView.f(c) != null) {
      RecyclerView.f(c).a(paramu);
    }
    if (c.e != null) {
      c.e.a(paramu);
    }
  }
  
  RecyclerView.m f()
  {
    if (g == null) {
      g = new RecyclerView.m();
    }
    return g;
  }
  
  RecyclerView.u f(int paramInt)
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
    RecyclerView.u localu;
    while (i < k)
    {
      localu = (RecyclerView.u)d.get(i);
      if ((!localu.i()) && (localu.d() == paramInt))
      {
        localu.b(32);
        return localu;
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
          localu = (RecyclerView.u)d.get(paramInt);
          if ((!localu.i()) && (localu.e() == l))
          {
            localu.b(32);
            return localu;
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
      RecyclerView.u localu = (RecyclerView.u)b.get(i);
      if (localu != null) {
        localu.b(512);
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
      RecyclerView.u localu = (RecyclerView.u)b.get(i);
      if (localu != null)
      {
        localu.b(6);
        localu.a(null);
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
      ((RecyclerView.u)b.get(i)).a();
      i += 1;
    }
    k = a.size();
    i = 0;
    while (i < k)
    {
      ((RecyclerView.u)a.get(i)).a();
      i += 1;
    }
    if (d != null)
    {
      k = d.size();
      i = j;
      while (i < k)
      {
        ((RecyclerView.u)d.get(i)).a();
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
 * Qualified Name:     android.support.v7.widget.RecyclerView.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */