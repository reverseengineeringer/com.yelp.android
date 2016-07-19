package com.yelp.android.af;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import java.io.File;
import java.io.InputStream;

class d$a
  implements d<InputStream, File>
{
  public i<File> a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
  }
  
  public String a()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */