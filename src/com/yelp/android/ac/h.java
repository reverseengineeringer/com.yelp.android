package com.yelp.android.ac;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.g;
import com.yelp.android.aa.d;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.aa.q;
import com.yelp.android.w.j;
import com.yelp.android.w.k;
import java.io.InputStream;

public class h
  extends q<InputStream>
  implements e<Uri>
{
  public h(Context paramContext)
  {
    this(paramContext, g.a(d.class, paramContext));
  }
  
  public h(Context paramContext, l<d, InputStream> paraml)
  {
    super(paramContext, paraml);
  }
  
  protected com.yelp.android.w.c<InputStream> a(Context paramContext, Uri paramUri)
  {
    return new k(paramContext, paramUri);
  }
  
  protected com.yelp.android.w.c<InputStream> a(Context paramContext, String paramString)
  {
    return new j(paramContext.getApplicationContext().getAssets(), paramString);
  }
  
  public static class a
    implements m<Uri, InputStream>
  {
    public l<Uri, InputStream> a(Context paramContext, com.yelp.android.aa.c paramc)
    {
      return new h(paramContext, paramc.a(d.class, InputStream.class));
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */