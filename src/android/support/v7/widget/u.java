package android.support.v7.widget;

import android.support.v4.view.eh;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class u
  extends bl
{
  private ArrayList<ce> a = new ArrayList();
  private ArrayList<ce> b = new ArrayList();
  private ArrayList<ae> c = new ArrayList();
  private ArrayList<ad> d = new ArrayList();
  private ArrayList<ArrayList<ce>> e = new ArrayList();
  private ArrayList<ArrayList<ae>> f = new ArrayList();
  private ArrayList<ArrayList<ad>> g = new ArrayList();
  private ArrayList<ce> h = new ArrayList();
  private ArrayList<ce> i = new ArrayList();
  private ArrayList<ce> j = new ArrayList();
  private ArrayList<ce> k = new ArrayList();
  
  private void a(ad paramad)
  {
    View localView = null;
    Object localObject = a;
    if (localObject == null) {}
    for (localObject = null;; localObject = a)
    {
      ce localce = b;
      if (localce != null) {
        localView = a;
      }
      if (localObject != null)
      {
        localObject = android.support.v4.view.ce.q((View)localObject).a(g());
        k.add(a);
        ((eh)localObject).b(e - c);
        ((eh)localObject).c(f - d);
        ((eh)localObject).a(0.0F).a(new ab(this, paramad, (eh)localObject)).b();
      }
      if (localView != null)
      {
        localObject = android.support.v4.view.ce.q(localView);
        k.add(b);
        ((eh)localObject).b(0.0F).c(0.0F).a(g()).a(1.0F).a(new ac(this, paramad, (eh)localObject, localView)).b();
      }
      return;
    }
  }
  
  private void a(List<ad> paramList, ce paramce)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      ad localad = (ad)paramList.get(m);
      if ((a(localad, paramce)) && (a == null) && (b == null)) {
        paramList.remove(localad);
      }
      m -= 1;
    }
  }
  
  private boolean a(ad paramad, ce paramce)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (b == paramce) {
      b = null;
    }
    for (;;)
    {
      android.support.v4.view.ce.c(a, 1.0F);
      android.support.v4.view.ce.a(a, 0.0F);
      android.support.v4.view.ce.b(a, 0.0F);
      a(paramce, bool1);
      bool1 = true;
      do
      {
        return bool1;
        bool1 = bool2;
      } while (a != paramce);
      a = null;
      bool1 = true;
    }
  }
  
  private void b(ad paramad)
  {
    if (a != null) {
      a(paramad, a);
    }
    if (b != null) {
      a(paramad, b);
    }
  }
  
  private void b(ce paramce, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = a;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      android.support.v4.view.ce.q((View)localObject).b(0.0F);
    }
    if (paramInt2 != 0) {
      android.support.v4.view.ce.q((View)localObject).c(0.0F);
    }
    localObject = android.support.v4.view.ce.q((View)localObject);
    i.add(paramce);
    ((eh)localObject).a(d()).a(new aa(this, paramce, paramInt1, paramInt2, (eh)localObject)).b();
  }
  
  private void j()
  {
    if (!b()) {
      i();
    }
  }
  
  private void p(ce paramce)
  {
    eh localeh = android.support.v4.view.ce.q(a);
    j.add(paramce);
    localeh.a(f()).a(0.0F).a(new y(this, paramce, localeh)).b();
  }
  
  private void q(ce paramce)
  {
    eh localeh = android.support.v4.view.ce.q(a);
    h.add(paramce);
    localeh.a(1.0F).a(e()).a(new z(this, paramce, localeh)).b();
  }
  
  public void a()
  {
    int m;
    int n;
    label24:
    int i1;
    if (!a.isEmpty())
    {
      m = 1;
      if (c.isEmpty()) {
        break label72;
      }
      n = 1;
      if (d.isEmpty()) {
        break label77;
      }
      i1 = 1;
      label36:
      if (b.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int i2 = 1;; i2 = 0)
    {
      if ((m != 0) || (n != 0) || (i2 != 0) || (i1 != 0)) {
        break label88;
      }
      return;
      m = 0;
      break;
      n = 0;
      break label24;
      i1 = 0;
      break label36;
    }
    label88:
    Object localObject1 = a.iterator();
    while (((Iterator)localObject1).hasNext()) {
      p((ce)((Iterator)localObject1).next());
    }
    a.clear();
    Object localObject2;
    label211:
    label291:
    long l1;
    label366:
    long l2;
    if (n != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(c);
      f.add(localObject1);
      c.clear();
      localObject2 = new v(this, (ArrayList)localObject1);
      if (m != 0) {
        android.support.v4.view.ce.a(get0a.a, (Runnable)localObject2, f());
      }
    }
    else
    {
      if (i1 != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(d);
        g.add(localObject1);
        d.clear();
        localObject2 = new w(this, (ArrayList)localObject1);
        if (m == 0) {
          break label428;
        }
        android.support.v4.view.ce.a(get0a.a, (Runnable)localObject2, f());
      }
      if (i2 == 0) {
        break label436;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(b);
      e.add(localObject1);
      b.clear();
      localObject2 = new x(this, (ArrayList)localObject1);
      if ((m == 0) && (n == 0) && (i1 == 0)) {
        break label456;
      }
      if (m == 0) {
        break label438;
      }
      l1 = f();
      if (n == 0) {
        break label444;
      }
      l2 = d();
      label376:
      if (i1 == 0) {
        break label450;
      }
    }
    label428:
    label436:
    label438:
    label444:
    label450:
    for (long l3 = g();; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      android.support.v4.view.ce.a(get0a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label211;
      ((Runnable)localObject2).run();
      break label291;
      break;
      l1 = 0L;
      break label366;
      l2 = 0L;
      break label376;
    }
    label456:
    ((Runnable)localObject2).run();
  }
  
  void a(List<ce> paramList)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      android.support.v4.view.ce.q(geta).a();
      m -= 1;
    }
  }
  
  public boolean a(ce paramce)
  {
    c(paramce);
    a.add(paramce);
    return true;
  }
  
  public boolean a(ce paramce, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = a;
    paramInt1 = (int)(paramInt1 + android.support.v4.view.ce.m(a));
    paramInt2 = (int)(paramInt2 + android.support.v4.view.ce.n(a));
    c(paramce);
    int m = paramInt3 - paramInt1;
    int n = paramInt4 - paramInt2;
    if ((m == 0) && (n == 0))
    {
      e(paramce);
      return false;
    }
    if (m != 0) {
      android.support.v4.view.ce.a(localView, -m);
    }
    if (n != 0) {
      android.support.v4.view.ce.b(localView, -n);
    }
    c.add(new ae(paramce, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean a(ce paramce1, ce paramce2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = android.support.v4.view.ce.m(a);
    float f2 = android.support.v4.view.ce.n(a);
    float f3 = android.support.v4.view.ce.f(a);
    c(paramce1);
    int m = (int)(paramInt3 - paramInt1 - f1);
    int n = (int)(paramInt4 - paramInt2 - f2);
    android.support.v4.view.ce.a(a, f1);
    android.support.v4.view.ce.b(a, f2);
    android.support.v4.view.ce.c(a, f3);
    if ((paramce2 != null) && (a != null))
    {
      c(paramce2);
      android.support.v4.view.ce.a(a, -m);
      android.support.v4.view.ce.b(a, -n);
      android.support.v4.view.ce.c(a, 0.0F);
    }
    d.add(new ad(paramce1, paramce2, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean b()
  {
    return (!b.isEmpty()) || (!d.isEmpty()) || (!c.isEmpty()) || (!a.isEmpty()) || (!i.isEmpty()) || (!j.isEmpty()) || (!h.isEmpty()) || (!k.isEmpty()) || (!f.isEmpty()) || (!e.isEmpty()) || (!g.isEmpty());
  }
  
  public boolean b(ce paramce)
  {
    c(paramce);
    android.support.v4.view.ce.c(a, 0.0F);
    b.add(paramce);
    return true;
  }
  
  public void c()
  {
    int m = c.size() - 1;
    Object localObject1;
    Object localObject2;
    while (m >= 0)
    {
      localObject1 = (ae)c.get(m);
      localObject2 = a.a;
      android.support.v4.view.ce.b((View)localObject2, 0.0F);
      android.support.v4.view.ce.a((View)localObject2, 0.0F);
      e(a);
      c.remove(m);
      m -= 1;
    }
    m = a.size() - 1;
    while (m >= 0)
    {
      d((ce)a.get(m));
      a.remove(m);
      m -= 1;
    }
    m = b.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ce)b.get(m);
      android.support.v4.view.ce.c(a, 1.0F);
      f((ce)localObject1);
      b.remove(m);
      m -= 1;
    }
    m = d.size() - 1;
    while (m >= 0)
    {
      b((ad)d.get(m));
      m -= 1;
    }
    d.clear();
    if (!b()) {
      return;
    }
    m = f.size() - 1;
    int n;
    while (m >= 0)
    {
      localObject1 = (ArrayList)f.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (ae)((ArrayList)localObject1).get(n);
        View localView = a.a;
        android.support.v4.view.ce.b(localView, 0.0F);
        android.support.v4.view.ce.a(localView, 0.0F);
        e(a);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          f.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = e.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)e.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        localObject2 = (ce)((ArrayList)localObject1).get(n);
        android.support.v4.view.ce.c(a, 1.0F);
        f((ce)localObject2);
        ((ArrayList)localObject1).remove(n);
        if (((ArrayList)localObject1).isEmpty()) {
          e.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    m = g.size() - 1;
    while (m >= 0)
    {
      localObject1 = (ArrayList)g.get(m);
      n = ((ArrayList)localObject1).size() - 1;
      while (n >= 0)
      {
        b((ad)((ArrayList)localObject1).get(n));
        if (((ArrayList)localObject1).isEmpty()) {
          g.remove(localObject1);
        }
        n -= 1;
      }
      m -= 1;
    }
    a(j);
    a(i);
    a(h);
    a(k);
    i();
  }
  
  public void c(ce paramce)
  {
    View localView = a;
    android.support.v4.view.ce.q(localView).a();
    int m = c.size() - 1;
    while (m >= 0)
    {
      if (c.get(m)).a == paramce)
      {
        android.support.v4.view.ce.b(localView, 0.0F);
        android.support.v4.view.ce.a(localView, 0.0F);
        e(paramce);
        c.remove(m);
      }
      m -= 1;
    }
    a(d, paramce);
    if (a.remove(paramce))
    {
      android.support.v4.view.ce.c(localView, 1.0F);
      d(paramce);
    }
    if (b.remove(paramce))
    {
      android.support.v4.view.ce.c(localView, 1.0F);
      f(paramce);
    }
    m = g.size() - 1;
    ArrayList localArrayList;
    while (m >= 0)
    {
      localArrayList = (ArrayList)g.get(m);
      a(localArrayList, paramce);
      if (localArrayList.isEmpty()) {
        g.remove(m);
      }
      m -= 1;
    }
    m = f.size() - 1;
    if (m >= 0)
    {
      localArrayList = (ArrayList)f.get(m);
      int n = localArrayList.size() - 1;
      for (;;)
      {
        if (n >= 0)
        {
          if (geta != paramce) {
            break label293;
          }
          android.support.v4.view.ce.b(localView, 0.0F);
          android.support.v4.view.ce.a(localView, 0.0F);
          e(paramce);
          localArrayList.remove(n);
          if (localArrayList.isEmpty()) {
            f.remove(m);
          }
        }
        m -= 1;
        break;
        label293:
        n -= 1;
      }
    }
    m = e.size() - 1;
    while (m >= 0)
    {
      localArrayList = (ArrayList)e.get(m);
      if (localArrayList.remove(paramce))
      {
        android.support.v4.view.ce.c(localView, 1.0F);
        f(paramce);
        if (localArrayList.isEmpty()) {
          e.remove(m);
        }
      }
      m -= 1;
    }
    if ((!j.remove(paramce)) || ((!h.remove(paramce)) || ((!k.remove(paramce)) || (i.remove(paramce))))) {}
    j();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */