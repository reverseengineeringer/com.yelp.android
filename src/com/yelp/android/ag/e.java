package com.yelp.android.ag;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.f;

public class e
  implements f<b>
{
  private final f<Bitmap> a;
  private final com.yelp.android.x.c b;
  
  public e(f<Bitmap> paramf, com.yelp.android.x.c paramc)
  {
    a = paramf;
    b = paramc;
  }
  
  public i<b> a(i<b> parami, int paramInt1, int paramInt2)
  {
    b localb = (b)parami.b();
    Bitmap localBitmap = ((b)parami.b()).b();
    Object localObject = new com.bumptech.glide.load.resource.bitmap.c(localBitmap, b);
    localObject = (Bitmap)a.a((i)localObject, paramInt1, paramInt2).b();
    if (!localObject.equals(localBitmap)) {
      parami = new d(new b(localb, (Bitmap)localObject, a));
    }
    return parami;
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */