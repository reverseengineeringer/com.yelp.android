package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.v.h;
import java.io.IOException;
import java.io.InputStream;

public class r
  implements d<h, Bitmap>
{
  private final d<InputStream, Bitmap> a;
  private final d<ParcelFileDescriptor, Bitmap> b;
  
  public r(d<InputStream, Bitmap> paramd, d<ParcelFileDescriptor, Bitmap> paramd1)
  {
    a = paramd;
    b = paramd1;
  }
  
  public t<Bitmap> a(h paramh, int paramInt1, int paramInt2)
  {
    Object localObject1 = paramh.a();
    if (localObject1 != null) {}
    for (;;)
    {
      try
      {
        localObject1 = a.a(localObject1, paramInt1, paramInt2);
        Object localObject3 = localObject1;
        if (localObject1 == null)
        {
          paramh = paramh.b();
          localObject3 = localObject1;
          if (paramh != null) {
            localObject3 = b.a(paramh, paramInt1, paramInt2);
          }
        }
        return (t<Bitmap>)localObject3;
      }
      catch (IOException localIOException)
      {
        if (Log.isLoggable("ImageVideoDecoder", 2)) {
          Log.v("ImageVideoDecoder", "Failed to load image from stream, trying FileDescriptor", localIOException);
        }
      }
      Object localObject2 = null;
    }
  }
  
  public String a()
  {
    return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */