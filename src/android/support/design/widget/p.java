package android.support.design.widget;

import android.view.animation.Interpolator;

class p
{
  private final e a;
  
  p(e parame)
  {
    a = parame;
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    a.a(paramFloat1, paramFloat2);
  }
  
  public void a(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2);
  }
  
  public void a(final a parama)
  {
    if (parama != null)
    {
      a.a(new p.e.a()
      {
        public void a()
        {
          parama.c(p.this);
        }
        
        public void b()
        {
          parama.a(p.this);
        }
        
        public void c()
        {
          parama.b(p.this);
        }
      });
      return;
    }
    a.a(null);
  }
  
  public void a(final c paramc)
  {
    if (paramc != null)
    {
      a.a(new p.e.b()
      {
        public void a()
        {
          paramc.a(p.this);
        }
      });
      return;
    }
    a.a(null);
  }
  
  public void a(Interpolator paramInterpolator)
  {
    a.a(paramInterpolator);
  }
  
  public boolean b()
  {
    return a.b();
  }
  
  public int c()
  {
    return a.c();
  }
  
  public float d()
  {
    return a.d();
  }
  
  public void e()
  {
    a.e();
  }
  
  public float f()
  {
    return a.f();
  }
  
  static abstract interface a
  {
    public abstract void a(p paramp);
    
    public abstract void b(p paramp);
    
    public abstract void c(p paramp);
  }
  
  static class b
    implements p.a
  {
    public void a(p paramp) {}
    
    public void b(p paramp) {}
    
    public void c(p paramp) {}
  }
  
  static abstract interface c
  {
    public abstract void a(p paramp);
  }
  
  static abstract interface d
  {
    public abstract p a();
  }
  
  static abstract class e
  {
    abstract void a();
    
    abstract void a(float paramFloat1, float paramFloat2);
    
    abstract void a(int paramInt);
    
    abstract void a(int paramInt1, int paramInt2);
    
    abstract void a(a parama);
    
    abstract void a(b paramb);
    
    abstract void a(Interpolator paramInterpolator);
    
    abstract boolean b();
    
    abstract int c();
    
    abstract float d();
    
    abstract void e();
    
    abstract float f();
    
    static abstract interface a
    {
      public abstract void a();
      
      public abstract void b();
      
      public abstract void c();
    }
    
    static abstract interface b
    {
      public abstract void a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */