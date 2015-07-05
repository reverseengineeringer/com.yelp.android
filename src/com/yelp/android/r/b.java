package com.yelp.android.r;

import com.bumptech.glide.Priority;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class b
  implements c<InputStream>
{
  private final byte[] a;
  private final String b;
  
  public b(byte[] paramArrayOfByte, String paramString)
  {
    a = paramArrayOfByte;
    b = paramString;
  }
  
  public void a() {}
  
  public InputStream b(Priority paramPriority)
  {
    return new ByteArrayInputStream(a);
  }
  
  public String b()
  {
    return b;
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.r.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */