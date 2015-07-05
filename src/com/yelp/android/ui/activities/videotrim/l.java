package com.yelp.android.ui.activities.videotrim;

import android.graphics.Bitmap;
import android.graphics.Matrix;

public class l
{
  private final Bitmap a;
  private final Matrix b;
  
  public l(Bitmap paramBitmap, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    a = paramBitmap;
    b = new Matrix();
    a(paramFloat1, paramFloat2, paramFloat3);
  }
  
  public Bitmap a()
  {
    return a;
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    b.reset();
    paramFloat3 /= a.getHeight();
    b.postScale(paramFloat3, paramFloat3);
    b.postTranslate(paramFloat1, paramFloat2);
  }
  
  public Matrix b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */