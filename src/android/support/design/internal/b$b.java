package android.support.design.internal;

import android.support.v7.internal.view.menu.h;

class b$b
{
  private final h a;
  private final int b;
  private final int c;
  
  private b$b(h paramh, int paramInt1, int paramInt2)
  {
    a = paramh;
    b = paramInt1;
    c = paramInt2;
  }
  
  public static b a(int paramInt1, int paramInt2)
  {
    return new b(null, paramInt1, paramInt2);
  }
  
  public static b a(h paramh)
  {
    return new b(paramh, 0, 0);
  }
  
  public boolean a()
  {
    return a == null;
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public h d()
  {
    return a;
  }
  
  public boolean e()
  {
    return (a != null) && (!a.hasSubMenu()) && (a.isEnabled());
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */