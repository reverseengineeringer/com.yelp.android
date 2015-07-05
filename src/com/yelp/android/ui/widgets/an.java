package com.yelp.android.ui.widgets;

import android.graphics.Matrix;

class an
  implements Runnable
{
  private final long b = System.currentTimeMillis();
  private final float c;
  private final float d;
  private final float e;
  private final float f;
  private final boolean g;
  private final float h;
  private final float i;
  
  public an(ScaleWebImageView paramScaleWebImageView, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
  {
    c = ScaleWebImageView.a(paramScaleWebImageView);
    d = paramFloat1;
    e = paramFloat2;
    f = paramFloat3;
    g = paramBoolean;
    float[] arrayOfFloat = new float[9];
    ScaleWebImageView.f(paramScaleWebImageView).getValues(arrayOfFloat);
    h = arrayOfFloat[2];
    i = arrayOfFloat[5];
  }
  
  public void run()
  {
    long l = System.currentTimeMillis() - b;
    float f4;
    float[] arrayOfFloat;
    float f5;
    float f6;
    if (l >= 200L)
    {
      ScaleWebImageView.f(a).postScale(d / ScaleWebImageView.a(a), d / ScaleWebImageView.a(a), e, f);
      ScaleWebImageView.a(a, d);
      if (g)
      {
        f1 = a.getWidth() / 2;
        f2 = d * ScaleWebImageView.g(a) / 2.0F;
        f3 = a.getHeight() / 2;
        f4 = d * ScaleWebImageView.h(a) / 2.0F;
        arrayOfFloat = new float[9];
        ScaleWebImageView.f(a).getValues(arrayOfFloat);
        f5 = arrayOfFloat[2];
        f6 = arrayOfFloat[5];
        ScaleWebImageView.f(a).postTranslate(f1 - f2 - f5, f3 - f4 - f6);
      }
      for (;;)
      {
        ScaleWebImageView.a(a, true);
        a.setImageMatrix(ScaleWebImageView.f(a));
        return;
        ScaleWebImageView.i(a);
      }
    }
    float f1 = (float)l / 200.0F;
    float f2 = c + (d - c) * f1;
    float f3 = f2 / ScaleWebImageView.a(a);
    ScaleWebImageView.a(a, f2);
    ScaleWebImageView.f(a).postScale(f3, f3, e, f);
    if (g)
    {
      f2 = a.getWidth() / 2;
      f3 = d * ScaleWebImageView.g(a) / 2.0F;
      f4 = a.getHeight() / 2;
      f5 = d * ScaleWebImageView.h(a) / 2.0F;
      arrayOfFloat = new float[9];
      ScaleWebImageView.f(a).getValues(arrayOfFloat);
      f6 = arrayOfFloat[2];
      float f7 = arrayOfFloat[5];
      float f8 = h;
      float f9 = h;
      float f10 = i;
      float f11 = i;
      ScaleWebImageView.f(a).postTranslate((f2 - f3 - f9) * f1 + f8 - f6, f1 * (f4 - f5 - f11) + f10 - f7);
    }
    for (;;)
    {
      a.setImageMatrix(ScaleWebImageView.f(a));
      a.postDelayed(this, 16L);
      return;
      ScaleWebImageView.i(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */