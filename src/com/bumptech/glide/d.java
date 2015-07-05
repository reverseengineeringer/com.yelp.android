package com.bumptech.glide;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.manager.l;
import com.yelp.android.ac.a;
import com.yelp.android.ae.e;
import com.yelp.android.v.f;
import com.yelp.android.v.m;
import java.io.InputStream;

public class d<ModelType>
  extends c<ModelType>
{
  private final m<ModelType, InputStream> g;
  private final m<ModelType, ParcelFileDescriptor> h;
  private final o i;
  
  d(Class<ModelType> paramClass, m<ModelType, InputStream> paramm, m<ModelType, ParcelFileDescriptor> paramm1, Context paramContext, h paramh, l paraml, com.bumptech.glide.manager.h paramh1, o paramo)
  {
    super(paramContext, paramClass, a(paramh, paramm, paramm1, a.class, com.yelp.android.z.b.class, null), paramh, paraml, paramh1);
    g = paramm;
    h = paramm1;
    i = paramo;
  }
  
  private static <A, Z, R> e<A, com.yelp.android.v.h, Z, R> a(h paramh, m<A, InputStream> paramm, m<A, ParcelFileDescriptor> paramm1, Class<Z> paramClass, Class<R> paramClass1, com.yelp.android.ad.c<Z, R> paramc)
  {
    if ((paramm == null) && (paramm1 == null)) {
      return null;
    }
    Object localObject = paramc;
    if (paramc == null) {
      localObject = paramh.a(paramClass, paramClass1);
    }
    paramh = paramh.b(com.yelp.android.v.h.class, paramClass);
    return new e(new f(paramm, paramm1), (com.yelp.android.ad.c)localObject, paramh);
  }
  
  public b<ModelType> j()
  {
    return (b)i.a(new b(this, g, h, i));
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */