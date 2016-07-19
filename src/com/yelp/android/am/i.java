package com.yelp.android.am;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import com.yelp.android.ae.b;

public class i
  extends b
{
  private b a;
  private a b;
  private boolean c;
  
  public i(b paramb, int paramInt)
  {
    this(new a(paramb.getConstantState(), paramInt), paramb, null);
  }
  
  i(a parama, b paramb, Resources paramResources)
  {
    b = parama;
    if (paramb == null)
    {
      if (paramResources != null)
      {
        a = ((b)a.a(parama).newDrawable(paramResources));
        return;
      }
      a = ((b)a.a(parama).newDrawable());
      return;
    }
    a = paramb;
  }
  
  public void a(int paramInt)
  {
    a.a(paramInt);
  }
  
  public boolean a()
  {
    return a.a();
  }
  
  public void clearColorFilter()
  {
    a.clearColorFilter();
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
  }
  
  @TargetApi(19)
  public int getAlpha()
  {
    return a.getAlpha();
  }
  
  @TargetApi(11)
  public Drawable.Callback getCallback()
  {
    return a.getCallback();
  }
  
  public int getChangingConfigurations()
  {
    return a.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return b;
  }
  
  public Drawable getCurrent()
  {
    return a.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return a.b(b);
  }
  
  public int getIntrinsicWidth()
  {
    return a.b(b);
  }
  
  public int getMinimumHeight()
  {
    return a.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return a.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return a.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return a.getPadding(paramRect);
  }
  
  public void invalidateSelf()
  {
    super.invalidateSelf();
    a.invalidateSelf();
  }
  
  public boolean isRunning()
  {
    return a.isRunning();
  }
  
  public Drawable mutate()
  {
    if ((!c) && (super.mutate() == this))
    {
      a = ((b)a.mutate());
      b = new a(b);
      c = true;
    }
    return this;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    super.scheduleSelf(paramRunnable, paramLong);
    a.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    a.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBounds(Rect paramRect)
  {
    super.setBounds(paramRect);
    a.setBounds(paramRect);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    a.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    a.setColorFilter(paramInt, paramMode);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    a.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    a.setFilterBitmap(paramBoolean);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return a.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    a.start();
  }
  
  public void stop()
  {
    a.stop();
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    super.unscheduleSelf(paramRunnable);
    a.unscheduleSelf(paramRunnable);
  }
  
  static class a
    extends Drawable.ConstantState
  {
    private final Drawable.ConstantState a;
    private final int b;
    
    a(Drawable.ConstantState paramConstantState, int paramInt)
    {
      a = paramConstantState;
      b = paramInt;
    }
    
    a(a parama)
    {
      this(a, b);
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    public Drawable newDrawable()
    {
      return newDrawable(null);
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      return new i(this, null, paramResources);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */