package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.e;
import com.bumptech.glide.load.resource.bitmap.n;
import com.yelp.android.aa.l;
import com.yelp.android.ab.e.a;
import com.yelp.android.ac.f.a;
import com.yelp.android.ac.g.a;
import com.yelp.android.ac.h.a;
import com.yelp.android.ac.i.a;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class g
{
  private static volatile g a;
  private final com.yelp.android.aa.c b;
  private final com.bumptech.glide.load.engine.b c;
  private final com.yelp.android.x.c d;
  private final com.yelp.android.y.h e;
  private final DecodeFormat f;
  private final com.yelp.android.am.f g = new com.yelp.android.am.f();
  private final com.yelp.android.ai.d h = new com.yelp.android.ai.d();
  private final com.yelp.android.ak.c i;
  private final e j;
  private final com.yelp.android.ah.f k;
  private final com.bumptech.glide.load.resource.bitmap.i l;
  private final com.yelp.android.ah.f m;
  private final Handler n;
  private final com.yelp.android.z.a o;
  
  g(com.bumptech.glide.load.engine.b paramb, com.yelp.android.y.h paramh, com.yelp.android.x.c paramc, Context paramContext, DecodeFormat paramDecodeFormat)
  {
    c = paramb;
    d = paramc;
    e = paramh;
    f = paramDecodeFormat;
    b = new com.yelp.android.aa.c(paramContext);
    n = new Handler(Looper.getMainLooper());
    o = new com.yelp.android.z.a(paramh, paramc, paramDecodeFormat);
    i = new com.yelp.android.ak.c();
    paramb = new n(paramc, paramDecodeFormat);
    i.a(InputStream.class, Bitmap.class, paramb);
    paramh = new com.bumptech.glide.load.resource.bitmap.g(paramc, paramDecodeFormat);
    i.a(ParcelFileDescriptor.class, Bitmap.class, paramh);
    paramb = new com.bumptech.glide.load.resource.bitmap.m(paramb, paramh);
    i.a(com.yelp.android.aa.g.class, Bitmap.class, paramb);
    paramh = new com.yelp.android.ag.c(paramContext, paramc);
    i.a(InputStream.class, com.yelp.android.ag.b.class, paramh);
    i.a(com.yelp.android.aa.g.class, com.yelp.android.ah.a.class, new com.yelp.android.ah.g(paramb, paramh, paramc));
    i.a(InputStream.class, File.class, new com.yelp.android.af.d());
    a(File.class, ParcelFileDescriptor.class, new com.yelp.android.ab.a.a());
    a(File.class, InputStream.class, new com.yelp.android.ac.d.a());
    a(Integer.TYPE, ParcelFileDescriptor.class, new com.yelp.android.ab.c.a());
    a(Integer.TYPE, InputStream.class, new f.a());
    a(Integer.class, ParcelFileDescriptor.class, new com.yelp.android.ab.c.a());
    a(Integer.class, InputStream.class, new f.a());
    a(String.class, ParcelFileDescriptor.class, new com.yelp.android.ab.d.a());
    a(String.class, InputStream.class, new g.a());
    a(Uri.class, ParcelFileDescriptor.class, new e.a());
    a(Uri.class, InputStream.class, new h.a());
    a(URL.class, InputStream.class, new i.a());
    a(com.yelp.android.aa.d.class, InputStream.class, new com.yelp.android.ac.a.a());
    a(byte[].class, InputStream.class, new com.yelp.android.ac.c.a());
    h.a(Bitmap.class, com.bumptech.glide.load.resource.bitmap.j.class, new com.yelp.android.ai.b(paramContext.getResources(), paramc));
    h.a(com.yelp.android.ah.a.class, com.yelp.android.ae.b.class, new com.yelp.android.ai.a(new com.yelp.android.ai.b(paramContext.getResources(), paramc)));
    j = new e(paramc);
    k = new com.yelp.android.ah.f(paramc, j);
    l = new com.bumptech.glide.load.resource.bitmap.i(paramc);
    m = new com.yelp.android.ah.f(paramc, l);
  }
  
  public static g a(Context paramContext)
  {
    if (a == null)
    {
      try
      {
        if (a != null) {
          break label126;
        }
        paramContext = paramContext.getApplicationContext();
        localObject = new com.yelp.android.aj.b(paramContext).a();
        h localh = new h(paramContext);
        Iterator localIterator = ((List)localObject).iterator();
        while (localIterator.hasNext()) {
          ((com.yelp.android.aj.a)localIterator.next()).a(paramContext, localh);
        }
        a = localh.a();
      }
      finally {}
      Object localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((com.yelp.android.aj.a)((Iterator)localObject).next()).a(paramContext, a);
      }
    }
    label126:
    return a;
  }
  
  public static <T> l<T, InputStream> a(Class<T> paramClass, Context paramContext)
  {
    return a(paramClass, InputStream.class, paramContext);
  }
  
  public static <T, Y> l<T, Y> a(Class<T> paramClass, Class<Y> paramClass1, Context paramContext)
  {
    if (paramClass == null)
    {
      if (Log.isLoggable("Glide", 3)) {
        Log.d("Glide", "Unable to load null model, setting placeholder only");
      }
      return null;
    }
    return a(paramContext).j().a(paramClass, paramClass1);
  }
  
  public static void a(com.yelp.android.am.j<?> paramj)
  {
    com.yelp.android.ao.h.a();
    com.bumptech.glide.request.b localb = paramj.a();
    if (localb != null)
    {
      localb.d();
      paramj.a(null);
    }
  }
  
  public static i b(Context paramContext)
  {
    return com.bumptech.glide.manager.j.a().a(paramContext);
  }
  
  public static <T> l<T, ParcelFileDescriptor> b(Class<T> paramClass, Context paramContext)
  {
    return a(paramClass, ParcelFileDescriptor.class, paramContext);
  }
  
  private com.yelp.android.aa.c j()
  {
    return b;
  }
  
  <Z, R> com.yelp.android.ai.c<Z, R> a(Class<Z> paramClass, Class<R> paramClass1)
  {
    return h.a(paramClass, paramClass1);
  }
  
  <R> com.yelp.android.am.j<R> a(ImageView paramImageView, Class<R> paramClass)
  {
    return g.a(paramImageView, paramClass);
  }
  
  public com.yelp.android.x.c a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    d.a(paramInt);
    e.a(paramInt);
  }
  
  public <T, Y> void a(Class<T> paramClass, Class<Y> paramClass1, com.yelp.android.aa.m<T, Y> paramm)
  {
    paramClass = b.a(paramClass, paramClass1, paramm);
    if (paramClass != null) {
      paramClass.a();
    }
  }
  
  com.bumptech.glide.load.engine.b b()
  {
    return c;
  }
  
  <T, Z> com.yelp.android.ak.b<T, Z> b(Class<T> paramClass, Class<Z> paramClass1)
  {
    return i.a(paramClass, paramClass1);
  }
  
  e c()
  {
    return j;
  }
  
  com.bumptech.glide.load.resource.bitmap.i d()
  {
    return l;
  }
  
  com.yelp.android.ah.f e()
  {
    return k;
  }
  
  com.yelp.android.ah.f f()
  {
    return m;
  }
  
  Handler g()
  {
    return n;
  }
  
  DecodeFormat h()
  {
    return f;
  }
  
  public void i()
  {
    d.a();
    e.a();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */