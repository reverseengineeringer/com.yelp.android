package com.yelp.android.ac;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.ab.b;

public class a
{
  private final t<b> a;
  private final t<Bitmap> b;
  
  public a(t<Bitmap> paramt, t<b> paramt1)
  {
    if ((paramt != null) && (paramt1 != null)) {
      throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
    }
    if ((paramt == null) && (paramt1 == null)) {
      throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
    }
    b = paramt;
    a = paramt1;
  }
  
  public int a()
  {
    if (b != null) {
      return b.c();
    }
    return a.c();
  }
  
  public t<Bitmap> b()
  {
    return b;
  }
  
  public t<b> c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */