package com.bumptech.glide;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.yelp.android.aa.f;
import com.yelp.android.aa.l;
import com.yelp.android.ai.c;
import java.io.InputStream;

public class b<ModelType>
  extends a<ModelType, Bitmap>
{
  private final l<ModelType, InputStream> g;
  private final l<ModelType, ParcelFileDescriptor> h;
  private final g i;
  private final i.d j;
  
  b(e<ModelType, ?, ?, ?> parame, l<ModelType, InputStream> paraml, l<ModelType, ParcelFileDescriptor> paraml1, i.d paramd)
  {
    super(a(c, paraml, paraml1, Bitmap.class, null), Bitmap.class, parame);
    g = paraml;
    h = paraml1;
    i = c;
    j = paramd;
  }
  
  private static <A, R> com.yelp.android.ak.e<A, com.yelp.android.aa.g, Bitmap, R> a(g paramg, l<A, InputStream> paraml, l<A, ParcelFileDescriptor> paraml1, Class<R> paramClass, c<Bitmap, R> paramc)
  {
    if ((paraml == null) && (paraml1 == null)) {
      return null;
    }
    Object localObject = paramc;
    if (paramc == null) {
      localObject = paramg.a(Bitmap.class, paramClass);
    }
    paramg = paramg.b(com.yelp.android.aa.g.class, Bitmap.class);
    return new com.yelp.android.ak.e(new f(paraml, paraml1), (c)localObject, paramg);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */