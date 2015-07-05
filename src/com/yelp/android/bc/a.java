package com.yelp.android.bc;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import com.yelp.android.appdata.ao;

public class a
  extends ImageView
{
  private static final float a = ao.a(68);
  private static final float b = ao.a(115);
  private static final float c = ao.a(110);
  private ValueAnimator d;
  private Bitmap e;
  private Bitmap f;
  private Paint g;
  private Paint h;
  private Paint i;
  
  public a(Context paramContext, Paint paramPaint)
  {
    super(paramContext);
    e = BitmapFactory.decodeResource(paramContext.getResources(), 2130837909);
    f = BitmapFactory.decodeResource(paramContext.getResources(), 2130837910);
    g = paramPaint;
    h = new Paint();
    i = new Paint();
    b();
  }
  
  private void b()
  {
    d = ValueAnimator.ofFloat(new float[] { 1.0F, 0.0F });
    d.addUpdateListener(new b(this));
    d.setDuration(500L);
    d.setRepeatMode(2);
    d.setRepeatCount(-1);
  }
  
  public void a()
  {
    if (!d.isStarted()) {
      d.start();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawBitmap(e, a, b, h);
    paramCanvas.drawBitmap(f, a, c, i);
    paramCanvas.drawLine(getWidth() / 2, 0.0F, getWidth() / 2, getHeight(), g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */