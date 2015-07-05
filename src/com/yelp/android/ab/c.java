package com.yelp.android.ab;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.f;
import com.yelp.android.p.d;

class c
  extends Drawable.ConstantState
{
  d a;
  byte[] b;
  Context c;
  f<Bitmap> d;
  int e;
  int f;
  com.yelp.android.p.b g;
  e h;
  Bitmap i;
  
  public c(d paramd, byte[] paramArrayOfByte, Context paramContext, f<Bitmap> paramf, int paramInt1, int paramInt2, com.yelp.android.p.b paramb, e parame, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("The first frame of the GIF must not be null");
    }
    a = paramd;
    b = paramArrayOfByte;
    h = parame;
    i = paramBitmap;
    c = paramContext.getApplicationContext();
    d = paramf;
    e = paramInt1;
    f = paramInt2;
    g = paramb;
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return new b(this);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return newDrawable();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */