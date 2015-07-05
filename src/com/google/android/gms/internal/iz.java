package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class iz
  extends Drawable
  implements Drawable.Callback
{
  private boolean LO = true;
  private int LV = 0;
  private long LW;
  private int LX;
  private int LY = 255;
  private int LZ;
  private int Ma = 0;
  private boolean Mb;
  private iz.b Mc;
  private Drawable Md;
  private Drawable Me;
  private boolean Mf;
  private boolean Mg;
  private boolean Mh;
  private int Mi;
  private int mFrom;
  
  public iz(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(null);
    Object localObject = paramDrawable1;
    if (paramDrawable1 == null) {
      localObject = iz.a.hi();
    }
    Md = ((Drawable)localObject);
    ((Drawable)localObject).setCallback(this);
    paramDrawable1 = Mc;
    Mm |= ((Drawable)localObject).getChangingConfigurations();
    paramDrawable1 = paramDrawable2;
    if (paramDrawable2 == null) {
      paramDrawable1 = iz.a.hi();
    }
    Me = paramDrawable1;
    paramDrawable1.setCallback(this);
    paramDrawable2 = Mc;
    Mm |= paramDrawable1.getChangingConfigurations();
  }
  
  iz(iz.b paramb)
  {
    Mc = new iz.b(paramb);
  }
  
  public boolean canConstantState()
  {
    if (!Mf) {
      if ((Md.getConstantState() == null) || (Me.getConstantState() == null)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      Mg = bool;
      Mf = true;
      return Mg;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    int j = 1;
    int i = 1;
    int k = 0;
    switch (LV)
    {
    }
    boolean bool;
    Drawable localDrawable1;
    Drawable localDrawable2;
    do
    {
      for (;;)
      {
        j = Ma;
        bool = LO;
        localDrawable1 = Md;
        localDrawable2 = Me;
        if (i == 0) {
          break;
        }
        if ((!bool) || (j == 0)) {
          localDrawable1.draw(paramCanvas);
        }
        if (j == LY)
        {
          localDrawable2.setAlpha(LY);
          localDrawable2.draw(paramCanvas);
        }
        return;
        LW = SystemClock.uptimeMillis();
        LV = 2;
        i = k;
      }
    } while (LW < 0L);
    float f1 = (float)(SystemClock.uptimeMillis() - LW) / LZ;
    if (f1 >= 1.0F) {}
    for (i = j;; i = 0)
    {
      if (i != 0) {
        LV = 0;
      }
      f1 = Math.min(f1, 1.0F);
      float f2 = mFrom;
      Ma = ((int)(f1 * (LX - mFrom) + f2));
      break;
    }
    if (bool) {
      localDrawable1.setAlpha(LY - j);
    }
    localDrawable1.draw(paramCanvas);
    if (bool) {
      localDrawable1.setAlpha(LY);
    }
    if (j > 0)
    {
      localDrawable2.setAlpha(j);
      localDrawable2.draw(paramCanvas);
      localDrawable2.setAlpha(LY);
    }
    invalidateSelf();
  }
  
  public int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | Mc.Ml | Mc.Mm;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (canConstantState())
    {
      Mc.Ml = getChangingConfigurations();
      return Mc;
    }
    return null;
  }
  
  public int getIntrinsicHeight()
  {
    return Math.max(Md.getIntrinsicHeight(), Me.getIntrinsicHeight());
  }
  
  public int getIntrinsicWidth()
  {
    return Math.max(Md.getIntrinsicWidth(), Me.getIntrinsicWidth());
  }
  
  public int getOpacity()
  {
    if (!Mh)
    {
      Mi = Drawable.resolveOpacity(Md.getOpacity(), Me.getOpacity());
      Mh = true;
    }
    return Mi;
  }
  
  public Drawable hh()
  {
    return Me;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (ll.ig())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.invalidateDrawable(this);
      }
    }
  }
  
  public Drawable mutate()
  {
    if ((!Mb) && (super.mutate() == this))
    {
      if (!canConstantState()) {
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
      }
      Md.mutate();
      Me.mutate();
      Mb = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    Md.setBounds(paramRect);
    Me.setBounds(paramRect);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (ll.ig())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
      }
    }
  }
  
  public void setAlpha(int paramInt)
  {
    if (Ma == LY) {
      Ma = paramInt;
    }
    LY = paramInt;
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    Md.setColorFilter(paramColorFilter);
    Me.setColorFilter(paramColorFilter);
  }
  
  public void startTransition(int paramInt)
  {
    mFrom = 0;
    LX = LY;
    Ma = 0;
    LZ = paramInt;
    LV = 1;
    invalidateSelf();
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (ll.ig())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.unscheduleDrawable(this, paramRunnable);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */