package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.Log;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ao.d;
import com.yelp.android.ao.h;
import java.io.OutputStream;

public class b
  implements e<Bitmap>
{
  private Bitmap.CompressFormat a;
  private int b;
  
  public b()
  {
    this(null, 90);
  }
  
  public b(Bitmap.CompressFormat paramCompressFormat, int paramInt)
  {
    a = paramCompressFormat;
    b = paramInt;
  }
  
  private Bitmap.CompressFormat a(Bitmap paramBitmap)
  {
    if (a != null) {
      return a;
    }
    if (paramBitmap.hasAlpha()) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
  
  public String a()
  {
    return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
  }
  
  public boolean a(i<Bitmap> parami, OutputStream paramOutputStream)
  {
    parami = (Bitmap)parami.b();
    long l = d.a();
    Bitmap.CompressFormat localCompressFormat = a(parami);
    parami.compress(localCompressFormat, b, paramOutputStream);
    if (Log.isLoggable("BitmapEncoder", 2)) {
      Log.v("BitmapEncoder", "Compressed with type: " + localCompressFormat + " of size " + h.a(parami) + " in " + d.a(l));
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */