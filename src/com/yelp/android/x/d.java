package com.yelp.android.x;

import com.yelp.android.r.b;
import com.yelp.android.r.c;
import java.io.InputStream;

public class d
  implements h<byte[]>
{
  private final String a;
  
  public d()
  {
    this("");
  }
  
  @Deprecated
  public d(String paramString)
  {
    a = paramString;
  }
  
  public c<InputStream> a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new b(paramArrayOfByte, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */