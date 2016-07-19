package com.yelp.android.ag;

import android.content.Context;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.yelp.android.aa.o;
import java.io.File;
import java.io.InputStream;

public class c
  implements com.yelp.android.ak.b<InputStream, b>
{
  private final i a;
  private final j b;
  private final o c;
  private final com.yelp.android.af.c<b> d;
  
  public c(Context paramContext, com.yelp.android.x.c paramc)
  {
    a = new i(paramContext, paramc);
    d = new com.yelp.android.af.c(a);
    b = new j(paramc);
    c = new o();
  }
  
  public d<File, b> a()
  {
    return d;
  }
  
  public d<InputStream, b> b()
  {
    return a;
  }
  
  public a<InputStream> c()
  {
    return c;
  }
  
  public e<b> d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */