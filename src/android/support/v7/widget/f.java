package android.support.v7.widget;

import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.view.View;
import com.yelp.android.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class f
  extends RecyclerView.e
{
  private ArrayList<RecyclerView.u> a = new ArrayList();
  private ArrayList<RecyclerView.u> b = new ArrayList();
  private ArrayList<b> c = new ArrayList();
  private ArrayList<a> d = new ArrayList();
  private ArrayList<ArrayList<RecyclerView.u>> e = new ArrayList();
  private ArrayList<ArrayList<b>> f = new ArrayList();
  private ArrayList<ArrayList<a>> g = new ArrayList();
  private ArrayList<RecyclerView.u> h = new ArrayList();
  private ArrayList<RecyclerView.u> i = new ArrayList();
  private ArrayList<RecyclerView.u> j = new ArrayList();
  private ArrayList<RecyclerView.u> k = new ArrayList();
  
  private void a(final a parama)
  {
    final View localView = null;
    final Object localObject = a;
    if (localObject == null) {}
    for (localObject = null;; localObject = a)
    {
      RecyclerView.u localu = b;
      if (localu != null) {
        localView = a;
      }
      if (localObject != null)
      {
        localObject = ai.s((View)localObject).a(g());
        k.add(a);
        ((az)localObject).b(e - c);
        ((az)localObject).c(f - d);
        ((az)localObject).a(0.0F).a(new c(parama)
        {
          public void a(View paramAnonymousView)
          {
            b(paramaa, true);
          }
          
          public void b(View paramAnonymousView)
          {
            localObject.a(null);
            ai.c(paramAnonymousView, 1.0F);
            ai.a(paramAnonymousView, 0.0F);
            ai.b(paramAnonymousView, 0.0F);
            a(paramaa, true);
            f.h(f.this).remove(paramaa);
            f.e(f.this);
          }
        }).c();
      }
      if (localView != null)
      {
        localObject = ai.s(localView);
        k.add(b);
        ((az)localObject).b(0.0F).c(0.0F).a(g()).a(1.0F).a(new c(parama)
        {
          public void a(View paramAnonymousView)
          {
            b(paramab, false);
          }
          
          public void b(View paramAnonymousView)
          {
            localObject.a(null);
            ai.c(localView, 1.0F);
            ai.a(localView, 0.0F);
            ai.b(localView, 0.0F);
            a(paramab, false);
            f.h(f.this).remove(paramab);
            f.e(f.this);
          }
        }).c();
      }
      return;
    }
  }
  
  private void a(List<a> paramList, RecyclerView.u paramu)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      a locala = (a)paramList.get(m);
      if ((a(locala, paramu)) && (a == null) && (b == null)) {
        paramList.remove(locala);
      }
      m -= 1;
    }
  }
  
  private boolean a(a parama, RecyclerView.u paramu)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (b == paramu) {
      b = null;
    }
    for (;;)
    {
      ai.c(a, 1.0F);
      ai.a(a, 0.0F);
      ai.b(a, 0.0F);
      a(paramu, bool1);
      bool1 = true;
      do
      {
        return bool1;
        bool1 = bool2;
      } while (a != paramu);
      a = null;
      bool1 = true;
    }
  }
  
  private void b(final RecyclerView.u paramu, final int paramInt1, final int paramInt2, int paramInt3, int paramInt4)
  {
    final Object localObject = a;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      ai.s((View)localObject).b(0.0F);
    }
    if (paramInt2 != 0) {
      ai.s((View)localObject).c(0.0F);
    }
    localObject = ai.s((View)localObject);
    i.add(paramu);
    ((az)localObject).a(d()).a(new c(paramu)
    {
      public void a(View paramAnonymousView)
      {
        h(paramu);
      }
      
      public void b(View paramAnonymousView)
      {
        localObject.a(null);
        e(paramu);
        f.g(f.this).remove(paramu);
        f.e(f.this);
      }
      
      public void c(View paramAnonymousView)
      {
        if (paramInt1 != 0) {
          ai.a(paramAnonymousView, 0.0F);
        }
        if (paramInt2 != 0) {
          ai.b(paramAnonymousView, 0.0F);
        }
      }
    }).c();
  }
  
  private void b(a parama)
  {
    if (a != null) {
      a(parama, a);
    }
    if (b != null) {
      a(parama, b);
    }
  }
  
  private void j()
  {
    if (!b()) {
      i();
    }
  }
  
  private void p(final RecyclerView.u paramu)
  {
    final az localaz = ai.s(a);
    j.add(paramu);
    localaz.a(f()).a(0.0F).a(new c(paramu)
    {
      public void a(View paramAnonymousView)
      {
        g(paramu);
      }
      
      public void b(View paramAnonymousView)
      {
        localaz.a(null);
        ai.c(paramAnonymousView, 1.0F);
        d(paramu);
        f.d(f.this).remove(paramu);
        f.e(f.this);
      }
    }).c();
  }
  
  private void q(final RecyclerView.u paramu)
  {
    final az localaz = ai.s(a);
    h.add(paramu);
    localaz.a(1.0F).a(e()).a(new c(paramu)
    {
      public void a(View paramAnonymousView)
      {
        i(paramu);
      }
      
      public void b(View paramAnonymousView)
      {
        localaz.a(null);
        f(paramu);
        f.f(f.this).remove(paramu);
        f.e(f.this);
      }
      
      public void c(View paramAnonymousView)
      {
        ai.c(paramAnonymousView, 1.0F);
      }
    }).c();
  }
  
  private void r(RecyclerView.u paramu)
  {
    a.a(a);
    c(paramu);
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
    final Object localObject1 = a.iterator();
    while (((Iterator)localObject1).hasNext()) {
      p((RecyclerView.u)((Iterator)localObject1).next());
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
      localObject2 = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            f.b localb = (f.b)localIterator.next();
            f.a(f.this, a, b, c, d, e);
          }
          localObject1.clear();
          f.a(f.this).remove(localObject1);
        }
      };
      if (m != 0) {
        ai.a(get0a.a, (Runnable)localObject2, f());
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
        localObject2 = new Runnable()
        {
          public void run()
          {
            Iterator localIterator = localObject1.iterator();
            while (localIterator.hasNext())
            {
              f.a locala = (f.a)localIterator.next();
              f.a(f.this, locala);
            }
            localObject1.clear();
            f.b(f.this).remove(localObject1);
          }
        };
        if (m == 0) {
          break label428;
        }
        ai.a(get0a.a, (Runnable)localObject2, f());
      }
      if (i2 == 0) {
        break label436;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(b);
      e.add(localObject1);
      b.clear();
      localObject2 = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            RecyclerView.u localu = (RecyclerView.u)localIterator.next();
            f.a(f.this, localu);
          }
          localObject1.clear();
          f.c(f.this).remove(localObject1);
        }
      };
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
      ai.a(get0a, (Runnable)localObject2, l1 + l2);
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
  
  void a(List<RecyclerView.u> paramList)
  {
    int m = paramList.size() - 1;
    while (m >= 0)
    {
      ai.s(geta).b();
      m -= 1;
    }
  }
  
  public boolean a(RecyclerView.u paramu)
  {
    r(paramu);
    a.add(paramu);
    return true;
  }
  
  public boolean a(RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = a;
    paramInt1 = (int)(paramInt1 + ai.o(a));
    paramInt2 = (int)(paramInt2 + ai.p(a));
    r(paramu);
    int m = paramInt3 - paramInt1;
    int n = paramInt4 - paramInt2;
    if ((m == 0) && (n == 0))
    {
      e(paramu);
      return false;
    }
    if (m != 0) {
      ai.a(localView, -m);
    }
    if (n != 0) {
      ai.b(localView, -n);
    }
    c.add(new b(paramu, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean a(RecyclerView.u paramu1, RecyclerView.u paramu2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = ai.o(a);
    float f2 = ai.p(a);
    float f3 = ai.f(a);
    r(paramu1);
    int m = (int)(paramInt3 - paramInt1 - f1);
    int n = (int)(paramInt4 - paramInt2 - f2);
    ai.a(a, f1);
    ai.b(a, f2);
    ai.c(a, f3);
    if ((paramu2 != null) && (a != null))
    {
      r(paramu2);
      ai.a(a, -m);
      ai.b(a, -n);
      ai.c(a, 0.0F);
    }
    d.add(new a(paramu1, paramu2, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean b()
  {
    return (!b.isEmpty()) || (!d.isEmpty()) || (!c.isEmpty()) || (!a.isEmpty()) || (!i.isEmpty()) || (!j.isEmpty()) || (!h.isEmpty()) || (!k.isEmpty()) || (!f.isEmpty()) || (!e.isEmpty()) || (!g.isEmpty());
  }
  
  public boolean b(RecyclerView.u paramu)
  {
    r(paramu);
    ai.c(a, 0.0F);
    b.add(paramu);
    return true;
  }
  
  public void c()
  {
    int m = c.size() - 1;
    Object localObject1;
    Object localObject2;
    while (m >= 0)
    {
      localObject1 = (b)c.get(m);
      localObject2 = a.a;
      ai.b((View)localObject2, 0.0F);
      ai.a((View)localObject2, 0.0F);
      e(a);
      c.remove(m);
      m -= 1;
    }
    m = a.size() - 1;
    while (m >= 0)
    {
      d((RecyclerView.u)a.get(m));
      a.remove(m);
      m -= 1;
    }
    m = b.size() - 1;
    while (m >= 0)
    {
      localObject1 = (RecyclerView.u)b.get(m);
      ai.c(a, 1.0F);
      f((RecyclerView.u)localObject1);
      b.remove(m);
      m -= 1;
    }
    m = d.size() - 1;
    while (m >= 0)
    {
      b((a)d.get(m));
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
        localObject2 = (b)((ArrayList)localObject1).get(n);
        View localView = a.a;
        ai.b(localView, 0.0F);
        ai.a(localView, 0.0F);
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
        localObject2 = (RecyclerView.u)((ArrayList)localObject1).get(n);
        ai.c(a, 1.0F);
        f((RecyclerView.u)localObject2);
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
        b((a)((ArrayList)localObject1).get(n));
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
  
  public void c(RecyclerView.u paramu)
  {
    View localView = a;
    ai.s(localView).b();
    int m = c.size() - 1;
    while (m >= 0)
    {
      if (c.get(m)).a == paramu)
      {
        ai.b(localView, 0.0F);
        ai.a(localView, 0.0F);
        e(paramu);
        c.remove(m);
      }
      m -= 1;
    }
    a(d, paramu);
    if (a.remove(paramu))
    {
      ai.c(localView, 1.0F);
      d(paramu);
    }
    if (b.remove(paramu))
    {
      ai.c(localView, 1.0F);
      f(paramu);
    }
    m = g.size() - 1;
    ArrayList localArrayList;
    while (m >= 0)
    {
      localArrayList = (ArrayList)g.get(m);
      a(localArrayList, paramu);
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
          if (geta != paramu) {
            break label293;
          }
          ai.b(localView, 0.0F);
          ai.a(localView, 0.0F);
          e(paramu);
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
      if (localArrayList.remove(paramu))
      {
        ai.c(localView, 1.0F);
        f(paramu);
        if (localArrayList.isEmpty()) {
          e.remove(m);
        }
      }
      m -= 1;
    }
    if ((!j.remove(paramu)) || ((!h.remove(paramu)) || ((!k.remove(paramu)) || (i.remove(paramu))))) {}
    j();
  }
  
  private static class a
  {
    public RecyclerView.u a;
    public RecyclerView.u b;
    public int c;
    public int d;
    public int e;
    public int f;
    
    private a(RecyclerView.u paramu1, RecyclerView.u paramu2)
    {
      a = paramu1;
      b = paramu2;
    }
    
    private a(RecyclerView.u paramu1, RecyclerView.u paramu2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(paramu1, paramu2);
      c = paramInt1;
      d = paramInt2;
      e = paramInt3;
      f = paramInt4;
    }
    
    public String toString()
    {
      return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
    }
  }
  
  private static class b
  {
    public RecyclerView.u a;
    public int b;
    public int c;
    public int d;
    public int e;
    
    private b(RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = paramu;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
  }
  
  private static class c
    implements bd
  {
    public void a(View paramView) {}
    
    public void b(View paramView) {}
    
    public void c(View paramView) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */