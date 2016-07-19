package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public class as
{
  static final e a = new a();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new b();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
  
  public static boolean b(ViewConfiguration paramViewConfiguration)
  {
    return a.b(paramViewConfiguration);
  }
  
  static class a
    implements as.e
  {
    public int a(ViewConfiguration paramViewConfiguration)
    {
      return paramViewConfiguration.getScaledTouchSlop();
    }
    
    public boolean b(ViewConfiguration paramViewConfiguration)
    {
      return true;
    }
  }
  
  static class b
    extends as.a
  {
    public int a(ViewConfiguration paramViewConfiguration)
    {
      return at.a(paramViewConfiguration);
    }
  }
  
  static class c
    extends as.b
  {
    public boolean b(ViewConfiguration paramViewConfiguration)
    {
      return false;
    }
  }
  
  static class d
    extends as.c
  {
    public boolean b(ViewConfiguration paramViewConfiguration)
    {
      return au.a(paramViewConfiguration);
    }
  }
  
  static abstract interface e
  {
    public abstract int a(ViewConfiguration paramViewConfiguration);
    
    public abstract boolean b(ViewConfiguration paramViewConfiguration);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */