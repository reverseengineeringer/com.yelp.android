package com.yelp.android.ui.widgets;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

class ai
  extends Drawable
{
  private final int a;
  private final BitmapShader b;
  private final Matrix c = new Matrix();
  private final Paint d = new Paint();
  private final RectF e = new RectF();
  private final RectF f = new RectF();
  
  public ai(Bitmap paramBitmap, int paramInt)
  {
    f.set(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    a = paramInt;
    b = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    b.setLocalMatrix(c);
    d.setAntiAlias(true);
    d.setShader(b);
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawRoundRect(e, a, a, d);
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    e.set(paramRect);
    c.setRectToRect(f, e, Matrix.ScaleToFit.CENTER);
    b.setLocalMatrix(c);
  }
  
  public void setAlpha(int paramInt)
  {
    d.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    d.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */