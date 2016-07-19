package com.yelp.android.af;

import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.aa.o;
import java.io.File;
import java.io.InputStream;

public class d
  implements com.yelp.android.ak.b<InputStream, File>
{
  private static final a a = new a(null);
  private final com.bumptech.glide.load.d<File, File> b = new a();
  private final com.bumptech.glide.load.a<InputStream> c = new o();
  
  public com.bumptech.glide.load.d<File, File> a()
  {
    return b;
  }
  
  public com.bumptech.glide.load.d<InputStream, File> b()
  {
    return a;
  }
  
  public com.bumptech.glide.load.a<InputStream> c()
  {
    return c;
  }
  
  public e<File> d()
  {
    return com.yelp.android.ad.b.b();
  }
  
  private static class a
    implements com.bumptech.glide.load.d<InputStream, File>
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
}

/* Location:
 * Qualified Name:     com.yelp.android.af.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */