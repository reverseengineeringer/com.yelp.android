package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class jd$a
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */