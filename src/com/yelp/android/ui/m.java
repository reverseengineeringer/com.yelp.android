package com.yelp.android.ui;

import android.view.SurfaceView;
import android.view.WindowManager.LayoutParams;
import com.yelp.android.s.a;
import com.yelp.android.util.YelpLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

class m
{
  public static void a(SurfaceView paramSurfaceView, int paramInt)
  {
    try
    {
      Object localObject = SurfaceView.class.getDeclaredField("mSession");
      ((Field)localObject).setAccessible(true);
      if (!Proxy.isProxyClass(((Field)localObject).get(paramSurfaceView).getClass()))
      {
        ClassLoader localClassLoader = paramSurfaceView.getClass().getClassLoader();
        n localn = new n(paramInt, ((Field)localObject).get(paramSurfaceView));
        ((Field)localObject).set(paramSurfaceView, Proxy.newProxyInstance(localClassLoader, new Class[] { a.class }, localn));
      }
      localObject = SurfaceView.class.getDeclaredMethod("updateWindow", new Class[] { Boolean.TYPE, Boolean.TYPE });
      ((Method)localObject).setAccessible(true);
      ((Method)localObject).invoke(paramSurfaceView, new Object[] { Boolean.valueOf(true), Boolean.valueOf(false) });
      return;
    }
    catch (Exception paramSurfaceView)
    {
      YelpLog.remoteError(paramSurfaceView);
    }
  }
  
  public static void b(SurfaceView paramSurfaceView, int paramInt)
  {
    try
    {
      Field localField1 = SurfaceView.class.getDeclaredField("mWindowType");
      localField1.setAccessible(true);
      localField1.set(paramSurfaceView, Integer.valueOf(paramInt));
      return;
    }
    catch (SecurityException paramSurfaceView)
    {
      YelpLog.remoteError(paramSurfaceView);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        Field localField2 = SurfaceView.class.getDeclaredField("mLayout");
        localField2.setAccessible(true);
        gettype = paramInt;
        return;
      }
      catch (SecurityException paramSurfaceView)
      {
        YelpLog.remoteError(paramSurfaceView);
        return;
      }
      catch (NoSuchFieldException paramSurfaceView)
      {
        YelpLog.remoteError(paramSurfaceView);
        return;
      }
      catch (IllegalArgumentException paramSurfaceView)
      {
        YelpLog.remoteError(paramSurfaceView);
        return;
      }
      catch (IllegalAccessException paramSurfaceView)
      {
        YelpLog.remoteError(paramSurfaceView);
        return;
      }
    }
    catch (IllegalArgumentException paramSurfaceView)
    {
      YelpLog.remoteError(paramSurfaceView);
      return;
    }
    catch (IllegalAccessException paramSurfaceView)
    {
      YelpLog.remoteError(paramSurfaceView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */