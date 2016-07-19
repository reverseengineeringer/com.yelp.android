package com.yelp.android.ah;

import android.graphics.Bitmap;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.ag.b;
import java.io.OutputStream;

public class d
  implements e<a>
{
  private final e<Bitmap> a;
  private final e<b> b;
  private String c;
  
  public d(e<Bitmap> parame, e<b> parame1)
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
  
  public boolean a(i<a> parami, OutputStream paramOutputStream)
  {
    parami = (a)parami.b();
    i locali = parami.b();
    if (locali != null) {
      return a.a(locali, paramOutputStream);
    }
    return b.a(parami.c(), paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */