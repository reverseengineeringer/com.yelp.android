package com.yelp.android.aa;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.t;
import java.io.File;
import java.io.InputStream;

class g
  implements d<InputStream, File>
{
  public t<File> a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
  }
  
  public String a()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */