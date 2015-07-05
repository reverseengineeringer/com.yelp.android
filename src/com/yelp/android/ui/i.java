package com.yelp.android.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;

class i
  extends ImageView
{
  private Paint a;
  
  public i(Context paramContext, Paint paramPaint)
  {
    super(paramContext);
    a = paramPaint;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawLine(getWidth() / 2, 0.0F, getWidth() / 2, getHeight(), a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */