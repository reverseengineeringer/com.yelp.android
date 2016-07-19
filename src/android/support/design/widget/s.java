package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;

class s
{
  private static final a a = new b(null);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new c(null);
      return;
    }
  }
  
  static void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    a.a(paramViewGroup, paramView, paramRect);
  }
  
  static void b(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    a(paramViewGroup, paramView, paramRect);
  }
  
  private static abstract interface a
  {
    public abstract void a(ViewGroup paramViewGroup, View paramView, Rect paramRect);
  }
  
  private static class b
    implements s.a
  {
    public void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
    {
      paramViewGroup.offsetDescendantRectToMyCoords(paramView, paramRect);
    }
  }
  
  private static class c
    implements s.a
  {
    public void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
    {
      t.a(paramViewGroup, paramView, paramRect);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */