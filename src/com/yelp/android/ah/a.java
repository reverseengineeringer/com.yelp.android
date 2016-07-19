package com.yelp.android.ah;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ag.b;

public class a
{
  private final i<b> a;
  private final i<Bitmap> b;
  
  public a(i<Bitmap> parami, i<b> parami1)
  {
    if ((parami != null) && (parami1 != null)) {
      throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
    }
    if ((parami == null) && (parami1 == null)) {
      throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
    }
    b = parami;
    a = parami1;
  }
  
  public int a()
  {
    if (b != null) {
      return b.c();
    }
    return a.c();
  }
  
  public i<Bitmap> b()
  {
    return b;
  }
  
  public i<b> c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */