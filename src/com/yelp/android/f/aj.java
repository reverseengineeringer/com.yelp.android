package com.yelp.android.f;

import android.os.Build.VERSION;

public class aj
{
  private static final am a = new ao();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new an();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      a = new al();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new ak();
      return;
    }
  }
  
  public aj(Object paramObject)
  {
    b = paramObject;
  }
  
  public static aj a()
  {
    return new aj(a.a());
  }
  
  public void a(int paramInt)
  {
    a.b(b, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void c(int paramInt)
  {
    a.e(b, paramInt);
  }
  
  public void d(int paramInt)
  {
    a.c(b, paramInt);
  }
  
  public void e(int paramInt)
  {
    a.d(b, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (aj)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(int paramInt)
  {
    a.f(b, paramInt);
  }
  
  public void g(int paramInt)
  {
    a.g(b, paramInt);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */