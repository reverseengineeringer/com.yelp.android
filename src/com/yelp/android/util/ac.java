package com.yelp.android.util;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

final class ac
  extends Drawable
{
  private Drawable a;
  
  public void a(Drawable paramDrawable)
  {
    a = paramDrawable;
    setBounds(a.copyBounds());
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return a.getOpacity();
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */