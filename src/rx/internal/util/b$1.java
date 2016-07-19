package rx.internal.util;

import java.security.PrivilegedAction;

final class b$1
  implements PrivilegedAction<ClassLoader>
{
  public ClassLoader a()
  {
    return ClassLoader.getSystemClassLoader();
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */