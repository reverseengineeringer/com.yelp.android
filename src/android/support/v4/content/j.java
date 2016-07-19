package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public class j
{
  private static final a a = new b();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new d();
      return;
    }
    if (i >= 11)
    {
      a = new c();
      return;
    }
  }
  
  public static Intent a(ComponentName paramComponentName)
  {
    return a.a(paramComponentName);
  }
  
  static abstract interface a
  {
    public abstract Intent a(ComponentName paramComponentName);
  }
  
  static class b
    implements j.a
  {
    public Intent a(ComponentName paramComponentName)
    {
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.setComponent(paramComponentName);
      localIntent.addCategory("android.intent.category.LAUNCHER");
      return localIntent;
    }
  }
  
  static class c
    extends j.b
  {
    public Intent a(ComponentName paramComponentName)
    {
      return k.a(paramComponentName);
    }
  }
  
  static class d
    extends j.c
  {}
}

/* Location:
 * Qualified Name:     android.support.v4.content.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */