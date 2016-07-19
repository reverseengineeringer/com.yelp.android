package android.support.v7.widget;

import java.util.ArrayList;

public abstract class RecyclerView$e
{
  private b a = null;
  private ArrayList<a> b = new ArrayList();
  private long c = 120L;
  private long d = 120L;
  private long e = 250L;
  private long f = 250L;
  private boolean g = true;
  
  public abstract void a();
  
  void a(b paramb)
  {
    a = paramb;
  }
  
  public final void a(RecyclerView.u paramu, boolean paramBoolean)
  {
    d(paramu, paramBoolean);
    if (a != null) {
      a.d(paramu);
    }
  }
  
  public abstract boolean a(RecyclerView.u paramu);
  
  public abstract boolean a(RecyclerView.u paramu, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean a(RecyclerView.u paramu1, RecyclerView.u paramu2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public final void b(RecyclerView.u paramu, boolean paramBoolean)
  {
    c(paramu, paramBoolean);
  }
  
  public abstract boolean b();
  
  public abstract boolean b(RecyclerView.u paramu);
  
  public abstract void c();
  
  public abstract void c(RecyclerView.u paramu);
  
  public void c(RecyclerView.u paramu, boolean paramBoolean) {}
  
  public long d()
  {
    return e;
  }
  
  public final void d(RecyclerView.u paramu)
  {
    k(paramu);
    if (a != null) {
      a.a(paramu);
    }
  }
  
  public void d(RecyclerView.u paramu, boolean paramBoolean) {}
  
  public long e()
  {
    return c;
  }
  
  public final void e(RecyclerView.u paramu)
  {
    o(paramu);
    if (a != null) {
      a.c(paramu);
    }
  }
  
  public long f()
  {
    return d;
  }
  
  public final void f(RecyclerView.u paramu)
  {
    m(paramu);
    if (a != null) {
      a.b(paramu);
    }
  }
  
  public long g()
  {
    return f;
  }
  
  public final void g(RecyclerView.u paramu)
  {
    j(paramu);
  }
  
  public final void h(RecyclerView.u paramu)
  {
    n(paramu);
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
      ((a)b.get(i)).a();
      i += 1;
    }
    b.clear();
  }
  
  public final void i(RecyclerView.u paramu)
  {
    l(paramu);
  }
  
  public void j(RecyclerView.u paramu) {}
  
  public void k(RecyclerView.u paramu) {}
  
  public void l(RecyclerView.u paramu) {}
  
  public void m(RecyclerView.u paramu) {}
  
  public void n(RecyclerView.u paramu) {}
  
  public void o(RecyclerView.u paramu) {}
  
  public static abstract interface a
  {
    public abstract void a();
  }
  
  static abstract interface b
  {
    public abstract void a(RecyclerView.u paramu);
    
    public abstract void b(RecyclerView.u paramu);
    
    public abstract void c(RecyclerView.u paramu);
    
    public abstract void d(RecyclerView.u paramu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */