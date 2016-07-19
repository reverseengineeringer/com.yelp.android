package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.aa.g;
import java.io.IOException;
import java.io.InputStream;

public class l
  implements d<g, Bitmap>
{
  private final d<InputStream, Bitmap> a;
  private final d<ParcelFileDescriptor, Bitmap> b;
  
  public l(d<InputStream, Bitmap> paramd, d<ParcelFileDescriptor, Bitmap> paramd1)
  {
    a = paramd;
    b = paramd1;
  }
  
  public i<Bitmap> a(g paramg, int paramInt1, int paramInt2)
    throws IOException
  {
    Object localObject1 = paramg.a();
    if (localObject1 != null) {}
    for (;;)
    {
      try
      {
        localObject1 = a.a(localObject1, paramInt1, paramInt2);
        Object localObject3 = localObject1;
        if (localObject1 == null)
        {
          paramg = paramg.b();
          localObject3 = localObject1;
          if (paramg != null) {
            localObject3 = b.a(paramg, paramInt1, paramInt2);
          }
        }
        return (i<Bitmap>)localObject3;
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
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */