package com.yelp.android.ah;

import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import java.io.IOException;
import java.io.InputStream;

class c$b
{
  public ImageHeaderParser.ImageType a(InputStream paramInputStream)
    throws IOException
  {
    return new ImageHeaderParser(paramInputStream).b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */