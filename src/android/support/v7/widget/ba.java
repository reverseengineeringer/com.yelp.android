package android.support.v7.widget;

import android.view.View;

public abstract class ba
{
  protected final br a;
  private int b = Integer.MIN_VALUE;
  
  private ba(br parambr)
  {
    a = parambr;
  }
  
  public static ba a(br parambr)
  {
    return new bb(parambr);
  }
  
  public static ba a(br parambr, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("invalid orientation");
    case 0: 
      return a(parambr);
    }
    return b(parambr);
  }
  
  public static ba b(br parambr)
  {
    return new bc(parambr);
  }
  
  public abstract int a(View paramView);
  
  public void a()
  {
    b = f();
  }
  
  public abstract void a(int paramInt);
  
  public int b()
  {
    if (Integer.MIN_VALUE == b) {
      return 0;
    }
    return f() - b;
  }
  
  public abstract int b(View paramView);
  
  public abstract int c();
  
  public abstract int c(View paramView);
  
  public abstract int d();
  
  public abstract int d(View paramView);
  
  public abstract int e();
  
  public abstract int f();
  
  public abstract int g();
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */