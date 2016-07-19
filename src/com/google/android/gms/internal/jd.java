package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class jd
  extends Drawable
  implements Drawable.Callback
{
  private int a = 0;
  private long b;
  private int c;
  private int d;
  private int e = 255;
  private int f;
  private int g = 0;
  private boolean h = true;
  private boolean i;
  private b j;
  private Drawable k;
  private Drawable l;
  private boolean m;
  private boolean n;
  private boolean o;
  private int p;
  
  public jd(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(null);
    Object localObject = paramDrawable1;
    if (paramDrawable1 == null) {
      localObject = a.a();
    }
    k = ((Drawable)localObject);
    ((Drawable)localObject).setCallback(this);
    paramDrawable1 = j;
    b |= ((Drawable)localObject).getChangingConfigurations();
    paramDrawable1 = paramDrawable2;
    if (paramDrawable2 == null) {
      paramDrawable1 = a.a();
    }
    l = paramDrawable1;
    paramDrawable1.setCallback(this);
    paramDrawable2 = j;
    b |= paramDrawable1.getChangingConfigurations();
  }
  
  jd(b paramb)
  {
    j = new b(paramb);
  }
  
  public void a(int paramInt)
  {
    c = 0;
    d = e;
    g = 0;
    f = paramInt;
    a = 1;
    invalidateSelf();
  }
  
  public boolean a()
  {
    if (!m) {
      if ((k.getConstantState() == null) || (l.getConstantState() == null)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      n = bool;
      m = true;
      return n;
    }
  }
  
  public Drawable b()
  {
    return l;
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i2 = 1;
    int i1 = 1;
    int i3 = 0;
    switch (a)
    {
    }
    boolean bool;
    Drawable localDrawable1;
    Drawable localDrawable2;
    do
    {
      for (;;)
      {
        i2 = g;
        bool = h;
        localDrawable1 = k;
        localDrawable2 = l;
        if (i1 == 0) {
          break;
        }
        if ((!bool) || (i2 == 0)) {
          localDrawable1.draw(paramCanvas);
        }
        if (i2 == e)
        {
          localDrawable2.setAlpha(e);
          localDrawable2.draw(paramCanvas);
        }
        return;
        b = SystemClock.uptimeMillis();
        a = 2;
        i1 = i3;
      }
    } while (b < 0L);
    float f1 = (float)(SystemClock.uptimeMillis() - b) / f;
    if (f1 >= 1.0F) {}
    for (i1 = i2;; i1 = 0)
    {
      if (i1 != 0) {
        a = 0;
      }
      f1 = Math.min(f1, 1.0F);
      float f2 = c;
      g = ((int)(f1 * (d - c) + f2));
      break;
    }
    if (bool) {
      localDrawable1.setAlpha(e - i2);
    }
    localDrawable1.draw(paramCanvas);
    if (bool) {
      localDrawable1.setAlpha(e);
    }
    if (i2 > 0)
    {
      localDrawable2.setAlpha(i2);
      localDrawable2.draw(paramCanvas);
      localDrawable2.setAlpha(e);
    }
    invalidateSelf();
  }
  
  public int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | j.a | j.b;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (a())
    {
      j.a = getChangingConfigurations();
      return j;
    }
    return null;
  }
  
  public int getIntrinsicHeight()
  {
    return Math.max(k.getIntrinsicHeight(), l.getIntrinsicHeight());
  }
  
  public int getIntrinsicWidth()
  {
    return Math.max(k.getIntrinsicWidth(), l.getIntrinsicWidth());
  }
  
  public int getOpacity()
  {
    if (!o)
    {
      p = Drawable.resolveOpacity(k.getOpacity(), l.getOpacity());
      o = true;
    }
    return p;
  }
  
  @TargetApi(11)
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (kf.a())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.invalidateDrawable(this);
      }
    }
  }
  
  public Drawable mutate()
  {
    if ((!i) && (super.mutate() == this))
    {
      if (!a()) {
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
      }
      k.mutate();
      l.mutate();
      i = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    k.setBounds(paramRect);
    l.setBounds(paramRect);
  }
  
  @TargetApi(11)
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (kf.a())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
      }
    }
  }
  
  public void setAlpha(int paramInt)
  {
    if (g == e) {
      g = paramInt;
    }
    e = paramInt;
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    k.setColorFilter(paramColorFilter);
    l.setColorFilter(paramColorFilter);
  }
  
  @TargetApi(11)
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (kf.a())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.unscheduleDrawable(this, paramRunnable);
      }
    }
  }
  
  private static final class a
    extends Drawable
  {
    private static final a a = new a();
    private static final a b = new a(null);
    
    public void draw(Canvas paramCanvas) {}
    
    public Drawable.ConstantState getConstantState()
    {
      return b;
    }
    
    public int getOpacity()
    {
      return -2;
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
    
    private static final class a
      extends Drawable.ConstantState
    {
      public int getChangingConfigurations()
      {
        return 0;
      }
      
      public Drawable newDrawable()
      {
        return jd.a.a();
      }
    }
  }
  
  static final class b
    extends Drawable.ConstantState
  {
    int a;
    int b;
    
    b(b paramb)
    {
      if (paramb != null)
      {
        a = a;
        b = b;
      }
    }
    
    public int getChangingConfigurations()
    {
      return a;
    }
    
    public Drawable newDrawable()
    {
      return new jd(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */