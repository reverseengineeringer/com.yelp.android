package com.yelp.android.ah;

import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;

class c$a
{
  public InputStream a(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    return new RecyclableBufferedInputStream(paramInputStream, paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */