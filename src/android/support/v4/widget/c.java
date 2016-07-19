package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.CompoundButton;

public final class c
{
  private static final c a = new b();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new a();
      return;
    }
    if (i >= 21)
    {
      a = new d();
      return;
    }
  }
  
  public static Drawable a(CompoundButton paramCompoundButton)
  {
    return a.a(paramCompoundButton);
  }
  
  public static void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
  {
    a.a(paramCompoundButton, paramColorStateList);
  }
  
  public static void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
  {
    a.a(paramCompoundButton, paramMode);
  }
  
  static class a
    extends c.d
  {
    public Drawable a(CompoundButton paramCompoundButton)
    {
      return d.a(paramCompoundButton);
    }
  }
  
  static class b
    implements c.c
  {
    public Drawable a(CompoundButton paramCompoundButton)
    {
      return e.a(paramCompoundButton);
    }
    
    public void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
    {
      e.a(paramCompoundButton, paramColorStateList);
    }
    
    public void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
    {
      e.a(paramCompoundButton, paramMode);
    }
  }
  
  static abstract interface c
  {
    public abstract Drawable a(CompoundButton paramCompoundButton);
    
    public abstract void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList);
    
    public abstract void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode);
  }
  
  static class d
    extends c.b
  {
    public void a(CompoundButton paramCompoundButton, ColorStateList paramColorStateList)
    {
      f.a(paramCompoundButton, paramColorStateList);
    }
    
    public void a(CompoundButton paramCompoundButton, PorterDuff.Mode paramMode)
    {
      f.a(paramCompoundButton, paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */