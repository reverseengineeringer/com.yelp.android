package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.yelp.android.aa.c;
import java.io.File;

public class j
  implements com.yelp.android.ae.b<ParcelFileDescriptor, Bitmap>
{
  private final d<File, Bitmap> a;
  private final k b;
  private final b c;
  private final com.bumptech.glide.load.a<ParcelFileDescriptor> d;
  
  public j(com.bumptech.glide.load.engine.bitmap_recycle.e parame, DecodeFormat paramDecodeFormat)
  {
    a = new c(new u(parame, paramDecodeFormat));
    b = new k(parame, paramDecodeFormat);
    c = new b();
    d = com.yelp.android.y.a.b();
  }
  
  public d<File, Bitmap> a()
  {
    return a;
  }
  
  public d<ParcelFileDescriptor, Bitmap> b()
  {
    return b;
  }
  
  public com.bumptech.glide.load.a<ParcelFileDescriptor> c()
  {
    return d;
  }
  
  public com.bumptech.glide.load.e<Bitmap> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */