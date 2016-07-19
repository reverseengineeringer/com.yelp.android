package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.yelp.android.aa.g;
import com.yelp.android.aa.h;
import com.yelp.android.ak.b;
import java.io.File;
import java.io.InputStream;

public class m
  implements b<g, Bitmap>
{
  private final l a;
  private final d<File, Bitmap> b;
  private final e<Bitmap> c;
  private final h d;
  
  public m(b<InputStream, Bitmap> paramb, b<ParcelFileDescriptor, Bitmap> paramb1)
  {
    c = paramb.d();
    d = new h(paramb.c(), paramb1.c());
    b = paramb.a();
    a = new l(paramb.b(), paramb1.b());
  }
  
  public d<File, Bitmap> a()
  {
    return b;
  }
  
  public d<g, Bitmap> b()
  {
    return a;
  }
  
  public a<g> c()
  {
    return d;
  }
  
  public e<Bitmap> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */