package com.bumptech.glide;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.manager.c.a;
import com.bumptech.glide.manager.k;
import com.yelp.android.ac.b;
import java.io.InputStream;

public class i
  implements com.bumptech.glide.manager.h
{
  private final Context a;
  private final com.bumptech.glide.manager.g b;
  private final k c;
  private final com.bumptech.glide.manager.l d;
  private final g e;
  private final d f;
  private a g;
  
  public i(Context paramContext, com.bumptech.glide.manager.g paramg, k paramk)
  {
    this(paramContext, paramg, paramk, new com.bumptech.glide.manager.l(), new com.bumptech.glide.manager.d());
  }
  
  i(Context paramContext, final com.bumptech.glide.manager.g paramg, k paramk, com.bumptech.glide.manager.l paraml, com.bumptech.glide.manager.d paramd)
  {
    a = paramContext.getApplicationContext();
    b = paramg;
    c = paramk;
    d = paraml;
    e = g.a(paramContext);
    f = new d();
    paramContext = paramd.a(paramContext, new e(paraml));
    if (com.yelp.android.ao.h.d()) {
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          paramg.a(i.this);
        }
      });
    }
    for (;;)
    {
      paramg.a(paramContext);
      return;
      paramg.a(this);
    }
  }
  
  private <T> d<T> a(Class<T> paramClass)
  {
    com.yelp.android.aa.l locall1 = g.a(paramClass, a);
    com.yelp.android.aa.l locall2 = g.b(paramClass, a);
    if ((paramClass != null) && (locall1 == null) && (locall2 == null)) {
      throw new IllegalArgumentException("Unknown type " + paramClass + ". You must provide a Model of a type for" + " which there is a registered ModelLoader, if you are using a custom model, you must first call" + " Glide#register with a ModelLoaderFactory for your custom model class");
    }
    return (d)f.a(new d(paramClass, locall1, locall2, a, e, d, b, f));
  }
  
  private static <T> Class<T> b(T paramT)
  {
    if (paramT != null) {
      return paramT.getClass();
    }
    return null;
  }
  
  public d<Uri> a(Uri paramUri)
  {
    return (d)g().a(paramUri);
  }
  
  public <A, T> b<A, T> a(com.yelp.android.aa.l<A, T> paraml, Class<T> paramClass)
  {
    return new b(paraml, paramClass);
  }
  
  public <T> c<T> a(com.yelp.android.ac.e<T> parame)
  {
    return new c(parame);
  }
  
  public void a()
  {
    e.i();
  }
  
  public void a(int paramInt)
  {
    e.a(paramInt);
  }
  
  public void b()
  {
    com.yelp.android.ao.h.a();
    d.a();
  }
  
  public void c()
  {
    com.yelp.android.ao.h.a();
    d.b();
  }
  
  public void d()
  {
    c();
  }
  
  public void e()
  {
    b();
  }
  
  public void f()
  {
    d.c();
  }
  
  public d<Uri> g()
  {
    return a(Uri.class);
  }
  
  public d<Uri> h()
  {
    Object localObject = g.a(Uri.class, a);
    localObject = new b(a, (com.yelp.android.aa.l)localObject);
    com.yelp.android.aa.l locall = g.b(Uri.class, a);
    return (d)f.a(new d(Uri.class, (com.yelp.android.aa.l)localObject, locall, a, e, d, b, f));
  }
  
  public static abstract interface a
  {
    public abstract <T> void a(e<T, ?, ?, ?> parame);
  }
  
  public final class b<A, T>
  {
    private final com.yelp.android.aa.l<A, T> b;
    private final Class<T> c;
    
    b(Class<T> paramClass)
    {
      b = paramClass;
      Class localClass;
      c = localClass;
    }
    
    public b<A, T>.a a(A paramA)
    {
      return new a(paramA);
    }
    
    public final class a
    {
      private final A b;
      private final Class<A> c;
      private final boolean d = true;
      
      a()
      {
        Object localObject;
        b = localObject;
        c = i.a(localObject);
      }
      
      public <Z> f<A, T, Z> a(Class<Z> paramClass)
      {
        paramClass = (f)i.e(i.this).a(new f(i.a(i.this), i.b(i.this), c, i.b.a(i.b.this), i.b.b(i.b.this), paramClass, i.c(i.this), i.d(i.this), i.e(i.this)));
        if (d) {
          paramClass.b(b);
        }
        return paramClass;
      }
    }
  }
  
  public final class c<T>
  {
    private final com.yelp.android.aa.l<T, InputStream> b;
    
    c()
    {
      com.yelp.android.aa.l locall;
      b = locall;
    }
    
    public d<T> a(Class<T> paramClass)
    {
      return (d)i.e(i.this).a(new d(paramClass, b, null, i.a(i.this), i.b(i.this), i.c(i.this), i.d(i.this), i.e(i.this)));
    }
    
    public d<T> a(T paramT)
    {
      return (d)a(i.a(paramT)).a(paramT);
    }
  }
  
  class d
  {
    d() {}
    
    public <A, X extends e<A, ?, ?, ?>> X a(X paramX)
    {
      if (i.f(i.this) != null) {
        i.f(i.this).a(paramX);
      }
      return paramX;
    }
  }
  
  private static class e
    implements c.a
  {
    private final com.bumptech.glide.manager.l a;
    
    public e(com.bumptech.glide.manager.l paraml)
    {
      a = paraml;
    }
    
    public void a(boolean paramBoolean)
    {
      if (paramBoolean) {
        a.d();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */