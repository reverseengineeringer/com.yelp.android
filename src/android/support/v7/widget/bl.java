package android.support.v7.widget;

import java.util.ArrayList;

public abstract class bl
{
  private bn a = null;
  private ArrayList<bm> b = new ArrayList();
  private long c = 120L;
  private long d = 120L;
  private long e = 250L;
  private long f = 250L;
  private boolean g = true;
  
  public abstract void a();
  
  void a(bn parambn)
  {
    a = parambn;
  }
  
  public final void a(ce paramce, boolean paramBoolean)
  {
    d(paramce, paramBoolean);
    if (a != null) {
      a.d(paramce);
    }
  }
  
  public abstract boolean a(ce paramce);
  
  public abstract boolean a(ce paramce, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean a(ce paramce1, ce paramce2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final void b(ce paramce, boolean paramBoolean)
  {
    c(paramce, paramBoolean);
  }
  
  public abstract boolean b();
  
  public abstract boolean b(ce paramce);
  
  public abstract void c();
  
  public abstract void c(ce paramce);
  
  public void c(ce paramce, boolean paramBoolean) {}
  
  public long d()
  {
    return e;
  }
  
  public final void d(ce paramce)
  {
    k(paramce);
    if (a != null) {
      a.a(paramce);
    }
  }
  
  public void d(ce paramce, boolean paramBoolean) {}
  
  public long e()
  {
    return c;
  }
  
  public final void e(ce paramce)
  {
    o(paramce);
    if (a != null) {
      a.c(paramce);
    }
  }
  
  public long f()
  {
    return d;
  }
  
  public final void f(ce paramce)
  {
    m(paramce);
    if (a != null) {
      a.b(paramce);
    }
  }
  
  public long g()
  {
    return f;
  }
  
  public final void g(ce paramce)
  {
    j(paramce);
  }
  
  public final void h(ce paramce)
  {
    n(paramce);
  }
  
  public boolean h()
  {
    return g;
  }
  
  public final void i()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      ((bm)b.get(i)).a();
      i += 1;
    }
    b.clear();
  }
  
  public final void i(ce paramce)
  {
    l(paramce);
  }
  
  public void j(ce paramce) {}
  
  public void k(ce paramce) {}
  
  public void l(ce paramce) {}
  
  public void m(ce paramce) {}
  
  public void n(ce paramce) {}
  
  public void o(ce paramce) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */