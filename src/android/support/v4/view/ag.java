package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public class ag
{
  static final c a = new a();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new b();
      return;
    }
  }
  
  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.a(paramVelocityTracker, paramInt);
  }
  
  public static float b(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.b(paramVelocityTracker, paramInt);
  }
  
  static class a
    implements ag.c
  {
    public float a(VelocityTracker paramVelocityTracker, int paramInt)
    {
      return paramVelocityTracker.getXVelocity();
    }
    
    public float b(VelocityTracker paramVelocityTracker, int paramInt)
    {
      return paramVelocityTracker.getYVelocity();
    }
  }
  
  static class b
    implements ag.c
  {
    public float a(VelocityTracker paramVelocityTracker, int paramInt)
    {
      return ah.a(paramVelocityTracker, paramInt);
    }
    
    public float b(VelocityTracker paramVelocityTracker, int paramInt)
    {
      return ah.b(paramVelocityTracker, paramInt);
    }
  }
  
  static abstract interface c
  {
    public abstract float a(VelocityTracker paramVelocityTracker, int paramInt);
    
    public abstract float b(VelocityTracker paramVelocityTracker, int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */