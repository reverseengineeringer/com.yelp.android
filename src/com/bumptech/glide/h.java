package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.s;
import com.bumptech.glide.load.resource.bitmap.t;
import com.bumptech.glide.manager.k;
import com.yelp.android.x.p;
import java.io.File;
import java.io.InputStream;
import java.net.URL;

public class h
{
  private static volatile h a;
  private final com.yelp.android.v.c b;
  private final com.bumptech.glide.load.engine.d c;
  private final com.bumptech.glide.load.engine.bitmap_recycle.e d;
  private final com.yelp.android.s.f e;
  private final DecodeFormat f;
  private final com.yelp.android.ag.f g = new com.yelp.android.ag.f();
  private final com.yelp.android.ad.d h = new com.yelp.android.ad.d();
  private final com.yelp.android.ae.c i;
  private final com.bumptech.glide.load.resource.bitmap.e j;
  private final com.yelp.android.ac.h k;
  private final com.bumptech.glide.load.resource.bitmap.l l;
  private final com.yelp.android.ac.h m;
  private final Handler n;
  private final com.yelp.android.u.a o;
  
  h(com.bumptech.glide.load.engine.d paramd, com.yelp.android.s.f paramf, com.bumptech.glide.load.engine.bitmap_recycle.e parame, Context paramContext, DecodeFormat paramDecodeFormat)
  {
    c = paramd;
    d = parame;
    e = paramf;
    f = paramDecodeFormat;
    b = new com.yelp.android.v.c(paramContext);
    n = new Handler(Looper.getMainLooper());
    o = new com.yelp.android.u.a(paramf, parame, paramDecodeFormat);
    i = new com.yelp.android.ae.c();
    paramd = new t(parame, paramDecodeFormat);
    i.a(InputStream.class, Bitmap.class, paramd);
    paramf = new com.bumptech.glide.load.resource.bitmap.j(parame, paramDecodeFormat);
    i.a(ParcelFileDescriptor.class, Bitmap.class, paramf);
    paramd = new s(paramd, paramf);
    i.a(com.yelp.android.v.h.class, Bitmap.class, paramd);
    paramf = new com.yelp.android.ab.d(paramContext, parame);
    i.a(InputStream.class, com.yelp.android.ab.b.class, paramf);
    i.a(com.yelp.android.v.h.class, com.yelp.android.ac.a.class, new com.yelp.android.ac.i(paramd, paramf, parame));
    i.a(InputStream.class, File.class, new com.yelp.android.aa.e());
    a(File.class, ParcelFileDescriptor.class, new com.yelp.android.w.b());
    a(File.class, InputStream.class, new com.yelp.android.x.g());
    a(Integer.TYPE, ParcelFileDescriptor.class, new com.yelp.android.w.e());
    a(Integer.TYPE, InputStream.class, new com.yelp.android.x.j());
    a(Integer.class, ParcelFileDescriptor.class, new com.yelp.android.w.e());
    a(Integer.class, InputStream.class, new com.yelp.android.x.j());
    a(String.class, ParcelFileDescriptor.class, new com.yelp.android.w.g());
    a(String.class, InputStream.class, new com.yelp.android.x.l());
    a(Uri.class, ParcelFileDescriptor.class, new com.yelp.android.w.i());
    a(Uri.class, InputStream.class, new com.yelp.android.x.n());
    a(URL.class, InputStream.class, new p());
    a(com.yelp.android.v.e.class, InputStream.class, new com.yelp.android.x.b());
    a(byte[].class, InputStream.class, new com.yelp.android.x.e());
    h.a(Bitmap.class, com.bumptech.glide.load.resource.bitmap.m.class, new com.yelp.android.ad.b(paramContext.getResources(), parame));
    h.a(com.yelp.android.ac.a.class, com.yelp.android.z.b.class, new com.yelp.android.ad.a(new com.yelp.android.ad.b(paramContext.getResources(), parame)));
    j = new com.bumptech.glide.load.resource.bitmap.e(parame);
    k = new com.yelp.android.ac.h(parame, j);
    l = new com.bumptech.glide.load.resource.bitmap.l(parame);
    m = new com.yelp.android.ac.h(parame, l);
  }
  
  public static j a(Fragment paramFragment)
  {
    return k.a().a(paramFragment);
  }
  
  public static j a(FragmentActivity paramFragmentActivity)
  {
    return k.a().a(paramFragmentActivity);
  }
  
  public static <T> com.yelp.android.v.m<T, InputStream> a(Class<T> paramClass, Context paramContext)
  {
    return a(paramClass, InputStream.class, paramContext);
  }
  
  public static <T, Y> com.yelp.android.v.m<T, Y> a(Class<T> paramClass, Class<Y> paramClass1, Context paramContext)
  {
    if (paramClass == null)
    {
      if (Log.isLoggable("Glide", 3)) {
        Log.d("Glide", "Unable to load null model, setting placeholder only");
      }
      return null;
    }
    return b(paramContext).i().a(paramClass, paramClass1);
  }
  
  public static File a(Context paramContext)
  {
    return a(paramContext, "image_manager_disk_cache");
  }
  
  public static File a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getCacheDir();
    if (paramContext != null)
    {
      paramContext = new File(paramContext, paramString);
      if ((paramContext.mkdirs()) || ((paramContext.exists()) && (paramContext.isDirectory()))) {}
    }
    while (!Log.isLoggable("Glide", 6))
    {
      return null;
      return paramContext;
    }
    Log.e("Glide", "default disk cache dir is null");
    return null;
  }
  
  public static void a(com.yelp.android.ag.j<?> paramj)
  {
    com.yelp.android.ai.f.a();
    paramj = paramj.f();
    if (paramj != null) {
      paramj.d();
    }
  }
  
  public static h b(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new i(paramContext).a();
      }
      return a;
    }
    finally {}
  }
  
  public static <T> com.yelp.android.v.m<T, ParcelFileDescriptor> b(Class<T> paramClass, Context paramContext)
  {
    return a(paramClass, ParcelFileDescriptor.class, paramContext);
  }
  
  public static j c(Context paramContext)
  {
    return k.a().a(paramContext);
  }
  
  private com.yelp.android.v.c i()
  {
    return b;
  }
  
  public com.bumptech.glide.load.engine.bitmap_recycle.e a()
  {
    return d;
  }
  
  <Z, R> com.yelp.android.ad.c<Z, R> a(Class<Z> paramClass, Class<R> paramClass1)
  {
    return h.a(paramClass, paramClass1);
  }
  
  <R> com.yelp.android.ag.j<R> a(ImageView paramImageView, Class<R> paramClass)
  {
    return g.a(paramImageView, paramClass);
  }
  
  public void a(int paramInt)
  {
    d.a(paramInt);
    e.a(paramInt);
  }
  
  public <T, Y> void a(Class<T> paramClass, Class<Y> paramClass1, com.yelp.android.v.n<T, Y> paramn)
  {
    paramClass = b.a(paramClass, paramClass1, paramn);
    if (paramClass != null) {
      paramClass.a();
    }
  }
  
  com.bumptech.glide.load.engine.d b()
  {
    return c;
  }
  
  <T, Z> com.yelp.android.ae.b<T, Z> b(Class<T> paramClass, Class<Z> paramClass1)
  {
    return i.a(paramClass, paramClass1);
  }
  
  com.bumptech.glide.load.resource.bitmap.e c()
  {
    return j;
  }
  
  com.bumptech.glide.load.resource.bitmap.l d()
  {
    return l;
  }
  
  com.yelp.android.ac.h e()
  {
    return k;
  }
  
  com.yelp.android.ac.h f()
  {
    return m;
  }
  
  DecodeFormat g()
  {
    return f;
  }
  
  public void h()
  {
    d.a();
    e.a();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */