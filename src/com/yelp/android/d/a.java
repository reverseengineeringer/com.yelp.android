package com.yelp.android.d;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class a
{
  static final b a = new a();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new h();
      return;
    }
    if (i >= 22)
    {
      a = new g();
      return;
    }
    if (i >= 21)
    {
      a = new f();
      return;
    }
    if (i >= 19)
    {
      a = new e();
      return;
    }
    if (i >= 17)
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
  
  public static void a(Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    a.a(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    a.a(paramDrawable, paramInt);
  }
  
  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    a.a(paramDrawable, paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    a.a(paramDrawable, paramMode);
  }
  
  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    a.a(paramDrawable, paramBoolean);
  }
  
  public static void b(Drawable paramDrawable, int paramInt)
  {
    a.b(paramDrawable, paramInt);
  }
  
  public static boolean b(Drawable paramDrawable)
  {
    return a.b(paramDrawable);
  }
  
  public static Drawable c(Drawable paramDrawable)
  {
    return a.c(paramDrawable);
  }
  
  public static <T extends Drawable> T d(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if ((paramDrawable instanceof i)) {
      localDrawable = ((i)paramDrawable).a();
    }
    return localDrawable;
  }
  
  public static int e(Drawable paramDrawable)
  {
    return a.d(paramDrawable);
  }
  
  static class a
    implements a.b
  {
    public void a(Drawable paramDrawable) {}
    
    public void a(Drawable paramDrawable, float paramFloat1, float paramFloat2) {}
    
    public void a(Drawable paramDrawable, int paramInt)
    {
      d.a(paramDrawable, paramInt);
    }
    
    public void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void a(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      d.a(paramDrawable, paramColorStateList);
    }
    
    public void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      d.a(paramDrawable, paramMode);
    }
    
    public void a(Drawable paramDrawable, boolean paramBoolean) {}
    
    public void b(Drawable paramDrawable, int paramInt) {}
    
    public boolean b(Drawable paramDrawable)
    {
      return false;
    }
    
    public Drawable c(Drawable paramDrawable)
    {
      return d.a(paramDrawable);
    }
    
    public int d(Drawable paramDrawable)
    {
      return 0;
    }
  }
  
  static abstract interface b
  {
    public abstract void a(Drawable paramDrawable);
    
    public abstract void a(Drawable paramDrawable, float paramFloat1, float paramFloat2);
    
    public abstract void a(Drawable paramDrawable, int paramInt);
    
    public abstract void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void a(Drawable paramDrawable, ColorStateList paramColorStateList);
    
    public abstract void a(Drawable paramDrawable, PorterDuff.Mode paramMode);
    
    public abstract void a(Drawable paramDrawable, boolean paramBoolean);
    
    public abstract void b(Drawable paramDrawable, int paramInt);
    
    public abstract boolean b(Drawable paramDrawable);
    
    public abstract Drawable c(Drawable paramDrawable);
    
    public abstract int d(Drawable paramDrawable);
  }
  
  static class c
    extends a.a
  {
    public void a(Drawable paramDrawable)
    {
      e.a(paramDrawable);
    }
    
    public Drawable c(Drawable paramDrawable)
    {
      return e.b(paramDrawable);
    }
  }
  
  static class d
    extends a.c
  {
    public void b(Drawable paramDrawable, int paramInt)
    {
      f.a(paramDrawable, paramInt);
    }
    
    public int d(Drawable paramDrawable)
    {
      int i = f.a(paramDrawable);
      if (i < 0) {
        return i;
      }
      return 0;
    }
  }
  
  static class e
    extends a.d
  {
    public void a(Drawable paramDrawable, boolean paramBoolean)
    {
      g.a(paramDrawable, paramBoolean);
    }
    
    public boolean b(Drawable paramDrawable)
    {
      return g.a(paramDrawable);
    }
    
    public Drawable c(Drawable paramDrawable)
    {
      return g.b(paramDrawable);
    }
  }
  
  static class f
    extends a.e
  {
    public void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
    {
      h.a(paramDrawable, paramFloat1, paramFloat2);
    }
    
    public void a(Drawable paramDrawable, int paramInt)
    {
      h.a(paramDrawable, paramInt);
    }
    
    public void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      h.a(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void a(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      h.a(paramDrawable, paramColorStateList);
    }
    
    public void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      h.a(paramDrawable, paramMode);
    }
    
    public Drawable c(Drawable paramDrawable)
    {
      return h.a(paramDrawable);
    }
  }
  
  static class g
    extends a.f
  {
    public Drawable c(Drawable paramDrawable)
    {
      return b.a(paramDrawable);
    }
  }
  
  static class h
    extends a.g
  {
    public void b(Drawable paramDrawable, int paramInt)
    {
      c.a(paramDrawable, paramInt);
    }
    
    public int d(Drawable paramDrawable)
    {
      return c.a(paramDrawable);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */