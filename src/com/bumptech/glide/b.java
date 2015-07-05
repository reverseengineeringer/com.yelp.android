package com.bumptech.glide;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.yelp.android.ad.c;
import com.yelp.android.v.f;
import com.yelp.android.v.m;
import java.io.InputStream;

public class b<ModelType>
  extends a<ModelType, Bitmap>
{
  private final m<ModelType, InputStream> g;
  private final m<ModelType, ParcelFileDescriptor> h;
  private final h i;
  private final o j;
  
  b(e<ModelType, ?, ?, ?> parame, m<ModelType, InputStream> paramm, m<ModelType, ParcelFileDescriptor> paramm1, o paramo)
  {
    super(a(c, paramm, paramm1, Bitmap.class, null), Bitmap.class, parame);
    g = paramm;
    h = paramm1;
    i = c;
    j = paramo;
  }
  
  private static <A, R> com.yelp.android.ae.e<A, com.yelp.android.v.h, Bitmap, R> a(h paramh, m<A, InputStream> paramm, m<A, ParcelFileDescriptor> paramm1, Class<R> paramClass, c<Bitmap, R> paramc)
  {
    if ((paramm == null) && (paramm1 == null)) {
      return null;
    }
    Object localObject = paramc;
    if (paramc == null) {
      localObject = paramh.a(Bitmap.class, paramClass);
    }
    paramh = paramh.b(com.yelp.android.v.h.class, Bitmap.class);
    return new com.yelp.android.ae.e(new f(paramm, paramm1), (c)localObject, paramh);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */