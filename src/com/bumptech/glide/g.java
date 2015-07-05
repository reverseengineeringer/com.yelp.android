package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.manager.l;
import com.yelp.android.ad.c;
import com.yelp.android.ae.f;
import com.yelp.android.v.m;

public class g<ModelType, DataType, ResourceType>
  extends e<ModelType, DataType, ResourceType, ResourceType>
{
  private final m<ModelType, DataType> g;
  private final Class<DataType> h;
  private final Class<ResourceType> i;
  private final o j;
  
  g(Context paramContext, h paramh, Class<ModelType> paramClass, m<ModelType, DataType> paramm, Class<DataType> paramClass1, Class<ResourceType> paramClass2, l paraml, com.bumptech.glide.manager.h paramh1, o paramo)
  {
    super(paramContext, paramClass, a(paramh, paramm, paramClass1, paramClass2, com.yelp.android.ad.e.b()), paramClass2, paramh, paraml, paramh1);
    g = paramm;
    h = paramClass1;
    i = paramClass2;
    j = paramo;
  }
  
  private static <A, T, Z, R> f<A, T, Z, R> a(h paramh, m<A, T> paramm, Class<T> paramClass, Class<Z> paramClass1, c<Z, R> paramc)
  {
    return new com.yelp.android.ae.e(paramm, paramc, paramh.b(paramClass, paramClass1));
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */