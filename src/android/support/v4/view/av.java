package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public class av
{
  static final c a = new f();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new e();
      return;
    }
    if (i >= 18)
    {
      a = new d();
      return;
    }
    if (i >= 14)
    {
      a = new b();
      return;
    }
    if (i >= 11)
    {
      a = new a();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
  
  static class a
    extends av.f
  {
    public void a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      aw.a(paramViewGroup, paramBoolean);
    }
  }
  
  static class b
    extends av.a
  {}
  
  static abstract interface c
  {
    public abstract void a(ViewGroup paramViewGroup, boolean paramBoolean);
  }
  
  static class d
    extends av.b
  {}
  
  static class e
    extends av.d
  {}
  
  static class f
    implements av.c
  {
    public void a(ViewGroup paramViewGroup, boolean paramBoolean) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */