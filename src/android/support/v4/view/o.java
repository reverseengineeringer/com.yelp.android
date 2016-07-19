package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;

public class o
{
  static final a a = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new c();
      return;
    }
  }
  
  public static int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.a(paramMarginLayoutParams);
  }
  
  public static int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.b(paramMarginLayoutParams);
  }
  
  static abstract interface a
  {
    public abstract int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
    
    public abstract int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
  }
  
  static class b
    implements o.a
  {
    public int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return leftMargin;
    }
    
    public int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return rightMargin;
    }
  }
  
  static class c
    implements o.a
  {
    public int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return p.a(paramMarginLayoutParams);
    }
    
    public int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return p.b(paramMarginLayoutParams);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */