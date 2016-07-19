package com.yelp.android.ah;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import com.yelp.android.aa.g;
import java.io.IOException;
import java.io.InputStream;

public class e
  implements d<InputStream, a>
{
  private final d<g, a> a;
  
  public e(d<g, a> paramd)
  {
    a = paramd;
  }
  
  public i<a> a(InputStream paramInputStream, int paramInt1, int paramInt2)
    throws IOException
  {
    return a.a(new g(paramInputStream, null), paramInt1, paramInt2);
  }
  
  public String a()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */