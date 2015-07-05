package com.bumptech.glide.request;

public class e
  implements a, b
{
  private a a;
  private a b;
  private b c;
  
  public e()
  {
    this(null);
  }
  
  public e(b paramb)
  {
    c = paramb;
  }
  
  private boolean j()
  {
    return (c == null) || (c.a(this));
  }
  
  private boolean k()
  {
    return (c == null) || (c.b(this));
  }
  
  private boolean l()
  {
    return (c != null) && (c.c());
  }
  
  public void a()
  {
    a.a();
    b.a();
  }
  
  public void a(a parama1, a parama2)
  {
    a = parama1;
    b = parama2;
  }
  
  public boolean a(a parama)
  {
    return (j()) && ((parama.equals(a)) || (!a.h()));
  }
  
  public void b()
  {
    if (!b.f()) {
      b.b();
    }
    if (!a.f()) {
      a.b();
    }
  }
  
  public boolean b(a parama)
  {
    return (k()) && (parama.equals(a)) && (!c());
  }
  
  public boolean c()
  {
    return (l()) || (h());
  }
  
  public void d()
  {
    b.d();
    a.d();
  }
  
  public void e()
  {
    a.e();
    b.e();
  }
  
  public boolean f()
  {
    return a.f();
  }
  
  public boolean g()
  {
    return (a.g()) || (b.g());
  }
  
  public boolean h()
  {
    return (a.h()) || (b.h());
  }
  
  public boolean i()
  {
    return a.i();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.request.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */