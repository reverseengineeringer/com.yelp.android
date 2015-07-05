package com.yelp.android.bc;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;

public class c
  extends ImageView
{
  private ValueAnimator a;
  private float b;
  private Bitmap c;
  private Paint d;
  
  public c(Context paramContext, Paint paramPaint)
  {
    super(paramContext);
    b();
    c = BitmapFactory.decodeResource(paramContext.getResources(), 2130837913);
    d = paramPaint;
  }
  
  private void b()
  {
    a = ValueAnimator.ofFloat(new float[] { -1.0F, 1.0F });
    a.addUpdateListener(new d(this));
    a.setDuration(3000L);
    a.setRepeatCount(-1);
  }
  
  public void a()
  {
    if (!a.isRunning()) {
      a.start();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f = getMeasuredWidth();
    paramCanvas.drawBitmap(c, f * b, getMeasuredHeight() * -b * 0.4F, null);
    paramCanvas.drawLine(getWidth() / 2, 0.0F, getWidth() / 2, getHeight(), d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bc.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */