package com.yelp.android.ac;

import android.graphics.Bitmap;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.ab.b;
import java.io.OutputStream;

public class f
  implements e<a>
{
  private final e<Bitmap> a;
  private final e<b> b;
  private String c;
  
  public f(e<Bitmap> parame, e<b> parame1)
  {
    a = parame;
    b = parame1;
  }
  
  public String a()
  {
    if (c == null) {
      c = (a.a() + b.a());
    }
    return c;
  }
  
  public boolean a(t<a> paramt, OutputStream paramOutputStream)
  {
    paramt = (a)paramt.b();
    t localt = paramt.b();
    if (localt != null) {
      return a.a(localt, paramOutputStream);
    }
    return b.a(paramt.c(), paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */