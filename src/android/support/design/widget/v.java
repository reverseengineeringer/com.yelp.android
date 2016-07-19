package android.support.design.widget;

import android.os.Build.VERSION;
import android.view.View;

class v
{
  static final p.d a = new p.d()
  {
    public p a()
    {
      if (Build.VERSION.SDK_INT >= 12) {}
      for (Object localObject = new r();; localObject = new q()) {
        return new p((p.e)localObject);
      }
    }
  };
  private static final a b = new b(null);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new c(null);
      return;
    }
  }
  
  static p a()
  {
    return a.a();
  }
  
  static void a(View paramView)
  {
    b.a(paramView);
  }
  
  private static abstract interface a
  {
    public abstract void a(View paramView);
  }
  
  private static class b
    implements v.a
  {
    public void a(View paramView) {}
  }
  
  private static class c
    implements v.a
  {
    public void a(View paramView)
    {
      w.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */