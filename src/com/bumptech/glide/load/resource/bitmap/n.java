package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class n
  extends Drawable.ConstantState
{
  private static final Paint d = new Paint(6);
  final Bitmap a;
  int b;
  Paint c = d;
  
  public n(Bitmap paramBitmap)
  {
    a = paramBitmap;
  }
  
  n(n paramn)
  {
    this(a);
    b = b;
  }
  
  void a()
  {
    if (d == c) {
      c = new Paint(6);
    }
  }
  
  void a(int paramInt)
  {
    a();
    c.setAlpha(paramInt);
  }
  
  void a(ColorFilter paramColorFilter)
  {
    a();
    c.setColorFilter(paramColorFilter);
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return new m(null, this);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return new m(paramResources, this);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */