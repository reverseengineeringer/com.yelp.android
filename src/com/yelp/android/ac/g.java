package com.yelp.android.ac;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.v.h;
import java.io.InputStream;

public class g
  implements d<InputStream, a>
{
  private final d<h, a> a;
  
  public g(d<h, a> paramd)
  {
    a = paramd;
  }
  
  public t<a> a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    return a.a(new h(paramInputStream, null), paramInt1, paramInt2);
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */