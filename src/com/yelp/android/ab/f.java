package com.yelp.android.ab;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.c;

public class f
  implements com.bumptech.glide.load.f<b>
{
  private final com.bumptech.glide.load.f<Bitmap> a;
  private final e b;
  
  public f(com.bumptech.glide.load.f<Bitmap> paramf, e parame)
  {
    a = paramf;
    b = parame;
  }
  
  public t<b> a(t<b> paramt, int paramInt1, int paramInt2)
  {
    b localb = (b)paramt.b();
    Object localObject = new c(((b)paramt.b()).b(), b);
    t localt = a.a((t)localObject, paramInt1, paramInt2);
    if (!localObject.equals(localt)) {
      ((t)localObject).d();
    }
    localObject = (Bitmap)localt.b();
    localb.a(a, (Bitmap)localObject);
    return paramt;
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */