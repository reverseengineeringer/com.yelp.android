package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import java.io.File;

public class g
  implements com.yelp.android.ak.b<ParcelFileDescriptor, Bitmap>
{
  private final d<File, Bitmap> a;
  private final h b;
  private final b c;
  private final com.bumptech.glide.load.a<ParcelFileDescriptor> d;
  
  public g(com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    a = new com.yelp.android.af.c(new o(paramc, paramDecodeFormat));
    b = new h(paramc, paramDecodeFormat);
    c = new b();
    d = com.yelp.android.ad.a.b();
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
  
  public e<Bitmap> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */