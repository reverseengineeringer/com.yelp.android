package com.yelp.android.ui.activities.animatedonboarding;

public class b
{
  private int a;
  private int b;
  private int c;
  private int d;
  private int e;
  
  public b(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramInt2;
    e = paramInt3;
  }
  
  public int a()
  {
    return e;
  }
  
  public void a(int paramInt)
  {
    if (d())
    {
      c = a;
      d = b;
      return;
    }
    c = (paramInt - a);
    d = (paramInt - b);
  }
  
  public boolean a(Object paramObject)
  {
    paramObject = (b)paramObject;
    return (a == a) && (b == b);
  }
  
  public int b()
  {
    return a;
  }
  
  public boolean b(Object paramObject)
  {
    paramObject = (b)paramObject;
    return (a == b) && (b == a);
  }
  
  public int c()
  {
    return b;
  }
  
  public boolean d()
  {
    return a <= b;
  }
  
  public int e()
  {
    return d;
  }
  
  public String toString()
  {
    return "startFrame: " + a + "/n" + "endFrame: " + b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */