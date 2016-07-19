package com.yelp.android.ag;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.f;
import com.yelp.android.u.a.a;

class b$a
  extends Drawable.ConstantState
{
  com.yelp.android.u.c a;
  byte[] b;
  Context c;
  f<Bitmap> d;
  int e;
  int f;
  a.a g;
  com.yelp.android.x.c h;
  Bitmap i;
  
  public b$a(com.yelp.android.u.c paramc, byte[] paramArrayOfByte, Context paramContext, f<Bitmap> paramf, int paramInt1, int paramInt2, a.a parama, com.yelp.android.x.c paramc1, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("The first frame of the GIF must not be null");
    }
    a = paramc;
    b = paramArrayOfByte;
    h = paramc1;
    i = paramBitmap;
    c = paramContext.getApplicationContext();
    d = paramf;
    e = paramInt1;
    f = paramInt2;
    g = parama;
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
 * Qualified Name:     com.yelp.android.ag.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */