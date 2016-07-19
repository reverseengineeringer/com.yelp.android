package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.yelp.android.x.c;
import java.io.IOException;

public class q
  implements a<ParcelFileDescriptor>
{
  private static final a a = new a();
  private a b;
  private int c;
  
  public q()
  {
    this(a, -1);
  }
  
  q(a parama, int paramInt)
  {
    b = parama;
    c = paramInt;
  }
  
  public Bitmap a(ParcelFileDescriptor paramParcelFileDescriptor, c paramc, int paramInt1, int paramInt2, DecodeFormat paramDecodeFormat)
    throws IOException
  {
    paramDecodeFormat = b.a();
    paramDecodeFormat.setDataSource(paramParcelFileDescriptor.getFileDescriptor());
    if (c >= 0) {}
    for (paramc = paramDecodeFormat.getFrameAtTime(c);; paramc = paramDecodeFormat.getFrameAtTime())
    {
      paramDecodeFormat.release();
      paramParcelFileDescriptor.close();
      return paramc;
    }
  }
  
  public String a()
  {
    return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
  }
  
  static class a
  {
    public MediaMetadataRetriever a()
    {
      return new MediaMetadataRetriever();
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */