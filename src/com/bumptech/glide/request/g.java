package com.bumptech.glide.request;

public class g
  implements b, c
{
  private b a;
  private b b;
  private c c;
  
  public g()
  {
    this(null);
  }
  
  public g(c paramc)
  {
    c = paramc;
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
  
  public void a(b paramb1, b paramb2)
  {
    a = paramb1;
    b = paramb2;
  }
  
  public boolean a(b paramb)
  {
    return (j()) && ((paramb.equals(a)) || (!a.h()));
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
  
  public boolean b(b paramb)
  {
    return (k()) && (paramb.equals(a)) && (!c());
  }
  
  public void c(b paramb)
  {
    if (paramb.equals(b)) {}
    do
    {
      return;
      if (c != null) {
        c.c(this);
      }
    } while (b.g());
    b.d();
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
 * Qualified Name:     com.bumptech.glide.request.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */