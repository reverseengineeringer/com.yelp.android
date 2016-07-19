package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.PopupWindow;

public class p
{
  static final f a = new c();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new b();
      return;
    }
    if (i >= 21)
    {
      a = new a();
      return;
    }
    if (i >= 19)
    {
      a = new e();
      return;
    }
    if (i >= 9)
    {
      a = new d();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    a.a(paramPopupWindow, paramInt);
  }
  
  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }
  
  public static void a(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    a.a(paramPopupWindow, paramBoolean);
  }
  
  static class a
    extends p.e
  {
    public void a(PopupWindow paramPopupWindow, boolean paramBoolean)
    {
      q.a(paramPopupWindow, paramBoolean);
    }
  }
  
  static class b
    extends p.a
  {
    public void a(PopupWindow paramPopupWindow, int paramInt)
    {
      r.a(paramPopupWindow, paramInt);
    }
    
    public void a(PopupWindow paramPopupWindow, boolean paramBoolean)
    {
      r.a(paramPopupWindow, paramBoolean);
    }
  }
  
  static class c
    implements p.f
  {
    public void a(PopupWindow paramPopupWindow, int paramInt) {}
    
    public void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
    {
      paramPopupWindow.showAsDropDown(paramView, paramInt1, paramInt2);
    }
    
    public void a(PopupWindow paramPopupWindow, boolean paramBoolean) {}
  }
  
  static class d
    extends p.c
  {
    public void a(PopupWindow paramPopupWindow, int paramInt)
    {
      s.a(paramPopupWindow, paramInt);
    }
  }
  
  static class e
    extends p.d
  {
    public void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
    {
      t.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  static abstract interface f
  {
    public abstract void a(PopupWindow paramPopupWindow, int paramInt);
    
    public abstract void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3);
    
    public abstract void a(PopupWindow paramPopupWindow, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */