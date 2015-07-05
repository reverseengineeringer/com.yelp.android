package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;

public class k
  implements d<ParcelFileDescriptor, Bitmap>
{
  private final w a;
  private final e b;
  private DecodeFormat c;
  
  public k(e parame, DecodeFormat paramDecodeFormat)
  {
    this(new w(), parame, paramDecodeFormat);
  }
  
  public k(w paramw, e parame, DecodeFormat paramDecodeFormat)
  {
    a = paramw;
    b = parame;
    c = paramDecodeFormat;
  }
  
  public t<Bitmap> a(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2)
  {
    return c.a(a.a(paramParcelFileDescriptor, b, paramInt1, paramInt2, c), b);
  }
  
  public String a()
  {
    return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */