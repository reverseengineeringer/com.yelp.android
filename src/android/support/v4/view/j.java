package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public class j
{
  static final a a = new b();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
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
  
  public static void a(LayoutInflater paramLayoutInflater, n paramn)
  {
    a.a(paramLayoutInflater, paramn);
  }
  
  static abstract interface a
  {
    public abstract void a(LayoutInflater paramLayoutInflater, n paramn);
  }
  
  static class b
    implements j.a
  {
    public void a(LayoutInflater paramLayoutInflater, n paramn)
    {
      k.a(paramLayoutInflater, paramn);
    }
  }
  
  static class c
    extends j.b
  {
    public void a(LayoutInflater paramLayoutInflater, n paramn)
    {
      l.a(paramLayoutInflater, paramn);
    }
  }
  
  static class d
    extends j.c
  {
    public void a(LayoutInflater paramLayoutInflater, n paramn)
    {
      m.a(paramLayoutInflater, paramn);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */