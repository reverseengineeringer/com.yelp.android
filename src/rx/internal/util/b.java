package rx.internal.util;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;

public final class b
{
  private static final int a = ;
  private static final boolean b;
  
  static
  {
    if (a != 0) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public static boolean a()
  {
    return b;
  }
  
  public static int b()
  {
    return a;
  }
  
  static ClassLoader c()
  {
    if (System.getSecurityManager() == null) {
      return ClassLoader.getSystemClassLoader();
    }
    (ClassLoader)AccessController.doPrivileged(new PrivilegedAction()
    {
      public ClassLoader a()
      {
        return ClassLoader.getSystemClassLoader();
      }
    });
  }
  
  private static int d()
  {
    try
    {
      int i = ((Integer)Class.forName("android.os.Build$VERSION", true, c()).getField("SDK_INT").get(null)).intValue();
      return i;
    }
    catch (Exception localException) {}
    return 0;
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */