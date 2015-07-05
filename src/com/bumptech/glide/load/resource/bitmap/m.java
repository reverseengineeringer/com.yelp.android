package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.util.DisplayMetrics;
import android.view.Gravity;
import com.yelp.android.z.b;

public class m
  extends b
{
  private final Rect a = new Rect();
  private int b;
  private int c;
  private boolean d;
  private boolean e;
  private n f;
  
  public m(Resources paramResources, Bitmap paramBitmap)
  {
    this(paramResources, new n(paramBitmap));
  }
  
  m(Resources paramResources, n paramn)
  {
    if (paramn == null) {
      throw new NullPointerException("BitmapState must not be null");
    }
    f = paramn;
    int i;
    if (paramResources != null)
    {
      int j = getDisplayMetricsdensityDpi;
      i = j;
      if (j == 0) {
        i = 160;
      }
      b = i;
    }
    for (;;)
    {
      b = a.getScaledWidth(i);
      c = a.getScaledHeight(i);
      return;
      i = b;
    }
  }
  
  public void a(int paramInt) {}
  
  public boolean a()
  {
    return false;
  }
  
  public Bitmap b()
  {
    return f.a;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (d)
    {
      Gravity.apply(119, b, c, getBounds(), a);
      d = false;
    }
    paramCanvas.drawBitmap(f.a, null, a, f.c);
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return f;
  }
  
  public int getIntrinsicHeight()
  {
    return c;
  }
  
  public int getIntrinsicWidth()
  {
    return b;
  }
  
  public int getOpacity()
  {
    Bitmap localBitmap = f.a;
    if ((localBitmap == null) || (localBitmap.hasAlpha()) || (f.c.getAlpha() < 255)) {
      return -3;
    }
    return -1;
  }
  
  public boolean isRunning()
  {
    return false;
  }
  
  public Drawable mutate()
  {
    if ((!e) && (super.mutate() == this))
    {
      f = new n(f);
      e = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    d = true;
  }
  
  public void setAlpha(int paramInt)
  {
    if (f.c.getAlpha() != paramInt)
    {
      f.a(paramInt);
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f.a(paramColorFilter);
    invalidateSelf();
  }
  
  public void start() {}
  
  public void stop() {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */