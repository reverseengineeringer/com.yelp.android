package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.a;
import com.yelp.android.ai.c;
import com.yelp.android.ak.b;
import java.io.File;

public class f<ModelType, DataType, ResourceType>
  extends e<ModelType, DataType, ResourceType, ResourceType>
{
  private final com.yelp.android.aa.l<ModelType, DataType> g;
  private final Class<DataType> h;
  private final Class<ResourceType> i;
  private final i.d j;
  
  f(Context paramContext, g paramg, Class<ModelType> paramClass, com.yelp.android.aa.l<ModelType, DataType> paraml, Class<DataType> paramClass1, Class<ResourceType> paramClass2, com.bumptech.glide.manager.l paraml1, com.bumptech.glide.manager.g paramg1, i.d paramd)
  {
    super(paramContext, paramClass, a(paramg, paraml, paramClass1, paramClass2, com.yelp.android.ai.e.b()), paramClass2, paramg, paraml1, paramg1);
    g = paraml;
    h = paramClass1;
    i = paramClass2;
    j = paramd;
  }
  
  f(Class<ResourceType> paramClass1, e<ModelType, ?, ?, ?> parame, com.yelp.android.aa.l<ModelType, DataType> paraml, Class<DataType> paramClass, Class<ResourceType> paramClass2, i.d paramd)
  {
    super(a(c, paraml, paramClass, paramClass2, com.yelp.android.ai.e.b()), paramClass1, parame);
    g = paraml;
    h = paramClass;
    i = paramClass2;
    j = paramd;
  }
  
  private e<ModelType, DataType, File, File> a()
  {
    Object localObject = com.yelp.android.ai.e.b();
    b localb = c.b(h, File.class);
    localObject = new com.yelp.android.ak.e(g, (c)localObject, localb);
    return j.a(new e((com.yelp.android.ak.f)localObject, File.class, this)).b(Priority.LOW).b(DiskCacheStrategy.SOURCE).b(true);
  }
  
  private static <A, T, Z, R> com.yelp.android.ak.f<A, T, Z, R> a(g paramg, com.yelp.android.aa.l<A, T> paraml, Class<T> paramClass, Class<Z> paramClass1, c<Z, R> paramc)
  {
    return new com.yelp.android.ak.e(paraml, paramc, paramg.b(paramClass, paramClass1));
  }
  
  public a<File> a(int paramInt1, int paramInt2)
  {
    return a().d(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */