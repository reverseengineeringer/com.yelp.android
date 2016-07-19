package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MotionEvent;

public class t
{
  static final e a = new a();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 5)
    {
      a = new b();
      return;
    }
  }
  
  public static int a(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getAction() & 0xFF;
  }
  
  public static int a(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.a(paramMotionEvent, paramInt);
  }
  
  public static int b(MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getAction() & 0xFF00) >> 8;
  }
  
  public static int b(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.b(paramMotionEvent, paramInt);
  }
  
  public static float c(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.c(paramMotionEvent, paramInt);
  }
  
  public static int c(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
  
  public static float d(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.d(paramMotionEvent, paramInt);
  }
  
  public static int d(MotionEvent paramMotionEvent)
  {
    return a.b(paramMotionEvent);
  }
  
  public static float e(MotionEvent paramMotionEvent, int paramInt)
  {
    return a.e(paramMotionEvent, paramInt);
  }
  
  static class a
    implements t.e
  {
    public int a(MotionEvent paramMotionEvent)
    {
      return 1;
    }
    
    public int a(MotionEvent paramMotionEvent, int paramInt)
    {
      if (paramInt == 0) {
        return 0;
      }
      return -1;
    }
    
    public int b(MotionEvent paramMotionEvent)
    {
      return 0;
    }
    
    public int b(MotionEvent paramMotionEvent, int paramInt)
    {
      if (paramInt == 0) {
        return 0;
      }
      throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }
    
    public float c(MotionEvent paramMotionEvent, int paramInt)
    {
      if (paramInt == 0) {
        return paramMotionEvent.getX();
      }
      throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }
    
    public float d(MotionEvent paramMotionEvent, int paramInt)
    {
      if (paramInt == 0) {
        return paramMotionEvent.getY();
      }
      throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }
    
    public float e(MotionEvent paramMotionEvent, int paramInt)
    {
      return 0.0F;
    }
  }
  
  static class b
    extends t.a
  {
    public int a(MotionEvent paramMotionEvent)
    {
      return u.a(paramMotionEvent);
    }
    
    public int a(MotionEvent paramMotionEvent, int paramInt)
    {
      return u.a(paramMotionEvent, paramInt);
    }
    
    public int b(MotionEvent paramMotionEvent, int paramInt)
    {
      return u.b(paramMotionEvent, paramInt);
    }
    
    public float c(MotionEvent paramMotionEvent, int paramInt)
    {
      return u.c(paramMotionEvent, paramInt);
    }
    
    public float d(MotionEvent paramMotionEvent, int paramInt)
    {
      return u.d(paramMotionEvent, paramInt);
    }
  }
  
  static class c
    extends t.b
  {
    public int b(MotionEvent paramMotionEvent)
    {
      return v.a(paramMotionEvent);
    }
  }
  
  static class d
    extends t.c
  {
    public float e(MotionEvent paramMotionEvent, int paramInt)
    {
      return w.a(paramMotionEvent, paramInt);
    }
  }
  
  static abstract interface e
  {
    public abstract int a(MotionEvent paramMotionEvent);
    
    public abstract int a(MotionEvent paramMotionEvent, int paramInt);
    
    public abstract int b(MotionEvent paramMotionEvent);
    
    public abstract int b(MotionEvent paramMotionEvent, int paramInt);
    
    public abstract float c(MotionEvent paramMotionEvent, int paramInt);
    
    public abstract float d(MotionEvent paramMotionEvent, int paramInt);
    
    public abstract float e(MotionEvent paramMotionEvent, int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */