package android.support.v4.view;

import android.view.WindowInsets;

class fb
  extends fa
{
  private final WindowInsets a;
  
  fb(WindowInsets paramWindowInsets)
  {
    a = paramWindowInsets;
  }
  
  public int a()
  {
    return a.getSystemWindowInsetLeft();
  }
  
  public fa a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new fb(a.replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public int b()
  {
    return a.getSystemWindowInsetTop();
  }
  
  public int c()
  {
    return a.getSystemWindowInsetRight();
  }
  
  public int d()
  {
    return a.getSystemWindowInsetBottom();
  }
  
  WindowInsets e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */