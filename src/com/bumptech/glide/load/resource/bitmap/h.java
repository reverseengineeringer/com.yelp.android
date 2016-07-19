package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import java.io.IOException;

public class h
  implements d<ParcelFileDescriptor, Bitmap>
{
  private final q a;
  private final com.yelp.android.x.c b;
  private DecodeFormat c;
  
  public h(q paramq, com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    a = paramq;
    b = paramc;
    c = paramDecodeFormat;
  }
  
  public h(com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    this(new q(), paramc, paramDecodeFormat);
  }
  
  public i<Bitmap> a(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2)
    throws IOException
  {
    return c.a(a.a(paramParcelFileDescriptor, b, paramInt1, paramInt2, c), b);
  }
  
  public String a()
  {
    return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */