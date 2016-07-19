package com.bumptech.glide;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.yelp.android.ak.e;
import java.io.File;
import java.io.InputStream;

public class d<ModelType>
  extends c<ModelType>
{
  private final com.yelp.android.aa.l<ModelType, InputStream> g;
  private final com.yelp.android.aa.l<ModelType, ParcelFileDescriptor> h;
  private final i.d i;
  
  d(Class<ModelType> paramClass, com.yelp.android.aa.l<ModelType, InputStream> paraml, com.yelp.android.aa.l<ModelType, ParcelFileDescriptor> paraml1, Context paramContext, g paramg, com.bumptech.glide.manager.l paraml2, com.bumptech.glide.manager.g paramg1, i.d paramd)
  {
    super(paramContext, paramClass, a(paramg, paraml, paraml1, com.yelp.android.ah.a.class, com.yelp.android.ae.b.class, null), paramg, paraml2, paramg1);
    g = paraml;
    h = paraml1;
    i = paramd;
  }
  
  private static <A, Z, R> e<A, com.yelp.android.aa.g, Z, R> a(g paramg, com.yelp.android.aa.l<A, InputStream> paraml, com.yelp.android.aa.l<A, ParcelFileDescriptor> paraml1, Class<Z> paramClass, Class<R> paramClass1, com.yelp.android.ai.c<Z, R> paramc)
  {
    if ((paraml == null) && (paraml1 == null)) {
      return null;
    }
    Object localObject = paramc;
    if (paramc == null) {
      localObject = paramg.a(paramClass, paramClass1);
    }
    paramg = paramg.b(com.yelp.android.aa.g.class, paramClass);
    return new e(new com.yelp.android.aa.f(paraml, paraml1), (com.yelp.android.ai.c)localObject, paramg);
  }
  
  private f<ModelType, InputStream, File> i()
  {
    return (f)i.a(new f(File.class, this, g, InputStream.class, File.class, i));
  }
  
  public com.bumptech.glide.request.a<File> c(int paramInt1, int paramInt2)
  {
    return i().a(paramInt1, paramInt2);
  }
  
  public b<ModelType> h()
  {
    return (b)i.a(new b(this, g, h, i));
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */