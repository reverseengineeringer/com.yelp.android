package com.yelp.android.ac;

import android.content.Context;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.w.b;
import java.io.InputStream;

public class c
  implements e<byte[]>
{
  private final String a;
  
  public c()
  {
    this("");
  }
  
  @Deprecated
  public c(String paramString)
  {
    a = paramString;
  }
  
  public com.yelp.android.w.c<InputStream> a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new b(paramArrayOfByte, a);
  }
  
  public static class a
    implements m<byte[], InputStream>
  {
    public l<byte[], InputStream> a(Context paramContext, com.yelp.android.aa.c paramc)
    {
      return new c();
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */