package pl.droidsonroids.gif;

import android.content.Context;
import android.os.Build.VERSION;
import java.lang.reflect.Method;

public class h
{
  private static Context a;
  
  private static Context a()
  {
    if (a == null) {}
    try
    {
      a = (Context)Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
      return a;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", localException);
    }
  }
  
  static void a(Context paramContext, String paramString)
  {
    try
    {
      System.loadLibrary(paramString);
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      if (Build.VERSION.SDK_INT < 9) {
        throw localUnsatisfiedLinkError;
      }
      if ("pl_droidsonroids_gif_surface".equals(paramString)) {
        a(paramContext, "pl_droidsonroids_gif");
      }
      Context localContext = paramContext;
      if (paramContext == null) {
        localContext = a();
      }
      j.a(localContext, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */