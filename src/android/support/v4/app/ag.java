package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;

public class ag
  extends ai.a
{
  public static final ai.a.a a;
  private static final a g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      g = new b();
    }
    for (;;)
    {
      a = new ai.a.a() {};
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        g = new d();
      } else {
        g = new c();
      }
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public CharSequence b()
  {
    return c;
  }
  
  public CharSequence[] c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public Bundle e()
  {
    return f;
  }
  
  static abstract interface a {}
  
  static class b
    implements ag.a
  {}
  
  static class c
    implements ag.a
  {}
  
  static class d
    implements ag.a
  {}
}

/* Location:
 * Qualified Name:     android.support.v4.app.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */