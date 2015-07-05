package com.yelp.android.ui;

import android.view.SurfaceView;
import android.view.WindowManager.LayoutParams;
import com.yelp.android.n.a;
import com.yelp.android.util.YelpLog;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

class u
{
  public static void a(SurfaceView paramSurfaceView, int paramInt)
  {
    try
    {
      Field localField = SurfaceView.class.getDeclaredField("mSession");
      Method localMethod = SurfaceView.class.getDeclaredMethod("updateWindow", new Class[] { Boolean.TYPE });
      localField.setAccessible(true);
      localMethod.setAccessible(true);
      if (!Proxy.isProxyClass(localField.get(paramSurfaceView).getClass()))
      {
        ClassLoader localClassLoader = paramSurfaceView.getClass().getClassLoader();
        v localv = new v(paramInt, localField.get(paramSurfaceView));
        localField.set(paramSurfaceView, Proxy.newProxyInstance(localClassLoader, new Class[] { a.class }, localv));
      }
      localMethod.invoke(paramSurfaceView, new Object[] { Boolean.valueOf(true) });
      return;
    }
    catch (SecurityException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (NoSuchFieldException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (IllegalArgumentException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (IllegalAccessException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (NoSuchMethodException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (InvocationTargetException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
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
      YelpLog.error(paramSurfaceView);
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
        YelpLog.error(paramSurfaceView);
        return;
      }
      catch (NoSuchFieldException paramSurfaceView)
      {
        YelpLog.error(paramSurfaceView);
        return;
      }
      catch (IllegalArgumentException paramSurfaceView)
      {
        YelpLog.error(paramSurfaceView);
        return;
      }
      catch (IllegalAccessException paramSurfaceView)
      {
        YelpLog.error(paramSurfaceView);
        return;
      }
    }
    catch (IllegalArgumentException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
      return;
    }
    catch (IllegalAccessException paramSurfaceView)
    {
      YelpLog.error(paramSurfaceView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */