package com.bumptech.glide;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.manager.e;
import com.bumptech.glide.manager.i;
import com.yelp.android.ah.a;
import com.yelp.android.ai.f;
import com.yelp.android.x.c;
import java.io.File;

public class j
  implements i
{
  private final Context a;
  private final com.bumptech.glide.manager.h b;
  private final com.bumptech.glide.manager.l c;
  private final h d;
  private final o e;
  private l f;
  
  public j(Context paramContext, com.bumptech.glide.manager.h paramh)
  {
    this(paramContext, paramh, new com.bumptech.glide.manager.l(), new e());
  }
  
  j(Context paramContext, com.bumptech.glide.manager.h paramh, com.bumptech.glide.manager.l paraml, e parame)
  {
    a = paramContext.getApplicationContext();
    b = paramh;
    c = paraml;
    d = h.b(paramContext);
    e = new o(this);
    paramContext = parame.a(paramContext, new p(paraml));
    if (f.c()) {
      new Handler(Looper.getMainLooper()).post(new k(this, paramh));
    }
    for (;;)
    {
      paramh.a(paramContext);
      return;
      paramh.a(this);
    }
  }
  
  private <T> d<T> a(Class<T> paramClass)
  {
    com.yelp.android.v.m localm1 = h.a(paramClass, a);
    com.yelp.android.v.m localm2 = h.b(paramClass, a);
    if ((paramClass != null) && (localm1 == null) && (localm2 == null)) {
      throw new IllegalArgumentException("Unknown type " + paramClass + ". You must provide a Model of a type for" + " which there is a registered ModelLoader, if you are using a custom model, you must first call" + " Glide#register with a ModelLoaderFactory for your custom model class");
    }
    return (d)e.a(new d(paramClass, localm1, localm2, a, d, c, b, e));
  }
  
  public d<File> a(File paramFile)
  {
    return (d)h().a(paramFile);
  }
  
  public d<Integer> a(Integer paramInteger)
  {
    return (d)i().a(paramInteger);
  }
  
  public d<String> a(String paramString)
  {
    return (d)f().a(paramString);
  }
  
  public <A, T> m<A, T> a(com.yelp.android.v.m<A, T> paramm, Class<T> paramClass)
  {
    return new m(this, paramm, paramClass);
  }
  
  public void a()
  {
    f.a();
    c.a();
  }
  
  public void b()
  {
    f.a();
    c.b();
  }
  
  public void c()
  {
    b();
  }
  
  public void d()
  {
    a();
  }
  
  public void e()
  {
    c.c();
  }
  
  public d<String> f()
  {
    return a(String.class);
  }
  
  public d<Uri> g()
  {
    Object localObject = h.a(Uri.class, a);
    localObject = new c(a, (com.yelp.android.v.m)localObject);
    com.yelp.android.v.m localm = h.b(Uri.class, a);
    return (d)e.a(new d(Uri.class, (com.yelp.android.v.m)localObject, localm, a, d, c, b, e));
  }
  
  public d<File> h()
  {
    return a(File.class);
  }
  
  public d<Integer> i()
  {
    return (d)a(Integer.class).a(a.a(a));
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */