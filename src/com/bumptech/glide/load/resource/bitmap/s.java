package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.yelp.android.ae.b;
import com.yelp.android.v.h;
import com.yelp.android.v.i;
import java.io.File;
import java.io.InputStream;

public class s
  implements b<h, Bitmap>
{
  private final r a;
  private final d<File, Bitmap> b;
  private final e<Bitmap> c;
  private final i d;
  
  public s(b<InputStream, Bitmap> paramb, b<ParcelFileDescriptor, Bitmap> paramb1)
  {
    c = paramb.d();
    d = new i(paramb.c(), paramb1.c());
    b = paramb.a();
    a = new r(paramb.b(), paramb1.b());
  }
  
  public d<File, Bitmap> a()
  {
    return b;
  }
  
  public d<h, Bitmap> b()
  {
    return a;
  }
  
  public a<h> c()
  {
    return d;
  }
  
  public e<Bitmap> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */