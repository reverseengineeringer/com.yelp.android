package com.yelp.android.ui.widgets;

import android.graphics.Matrix;
import android.util.Pair;

class am
  implements Runnable
{
  private final long b = System.currentTimeMillis();
  private final float c;
  private final float d;
  private final float e;
  private final float f;
  
  public am(ScaleWebImageView paramScaleWebImageView)
  {
    Pair localPair = ScaleWebImageView.e(paramScaleWebImageView);
    float[] arrayOfFloat = new float[9];
    ScaleWebImageView.f(paramScaleWebImageView).getValues(arrayOfFloat);
    c = arrayOfFloat[2];
    e = arrayOfFloat[5];
    d = (((Float)first).floatValue() + c);
    f = (((Float)second).floatValue() + e);
  }
  
  public void run()
  {
    long l = System.currentTimeMillis() - b;
    float[] arrayOfFloat = new float[9];
    ScaleWebImageView.f(a).getValues(arrayOfFloat);
    float f1 = arrayOfFloat[2];
    float f2 = arrayOfFloat[5];
    if (l >= 200L)
    {
      ScaleWebImageView.f(a).postTranslate(d - f1, f - f2);
      ScaleWebImageView.a(a, true);
    }
    for (;;)
    {
      a.setImageMatrix(ScaleWebImageView.f(a));
      return;
      float f3 = (float)l / 200.0F;
      float f4 = c;
      float f5 = d;
      float f6 = c;
      float f7 = e;
      float f8 = f;
      float f9 = e;
      ScaleWebImageView.f(a).postTranslate(f4 + (f5 - f6) * f3 - f1, f3 * (f8 - f9) + f7 - f2);
      a.postDelayed(this, 16L);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */