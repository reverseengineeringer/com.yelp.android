package com.yelp.android.cw;

import java.util.concurrent.atomic.AtomicInteger;
import jp.line.android.sdk.api.ApiType;

public final class a$a
{
  private static final AtomicInteger a = new AtomicInteger(0);
  
  public static final String a(c paramc)
  {
    if (paramc == null) {
      return null;
    }
    ApiType localApiType = a;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localApiType.ordinal());
    switch (a.1.a[localApiType.ordinal()])
    {
    default: 
      localStringBuilder.append("_").append(a.getAndIncrement());
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("_").append(paramc.c()).append("_").append(paramc.d());
      continue;
      localStringBuilder.append("_").append(paramc.g());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cw.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */