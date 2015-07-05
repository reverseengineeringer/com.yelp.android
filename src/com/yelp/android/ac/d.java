package com.yelp.android.ac;

import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;

class d
{
  public InputStream a(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    return new RecyclableBufferedInputStream(paramInputStream, paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */