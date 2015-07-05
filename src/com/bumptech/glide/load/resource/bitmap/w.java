package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.e;

public class w
  implements a<ParcelFileDescriptor>
{
  private static final x a = new x();
  private x b;
  
  public w()
  {
    this(a);
  }
  
  w(x paramx)
  {
    b = paramx;
  }
  
  public Bitmap a(ParcelFileDescriptor paramParcelFileDescriptor, e parame, int paramInt1, int paramInt2, DecodeFormat paramDecodeFormat)
  {
    parame = b.a();
    parame.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
    paramDecodeFormat = parame.getFrameAtTime();
    parame.release();
    paramParcelFileDescriptor.close();
    return paramDecodeFormat;
  }
  
  public String a()
  {
    return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */