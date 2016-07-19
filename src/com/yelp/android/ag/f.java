package com.yelp.android.ag;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.e;
import com.bumptech.glide.i;
import com.bumptech.glide.i.b;
import com.bumptech.glide.i.b.a;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;

class f
{
  private final b a;
  private final com.yelp.android.u.a b;
  private final Handler c;
  private boolean d = false;
  private boolean e = false;
  private e<com.yelp.android.u.a, com.yelp.android.u.a, Bitmap, Bitmap> f;
  private a g;
  private boolean h;
  
  public f(Context paramContext, b paramb, com.yelp.android.u.a parama, int paramInt1, int paramInt2)
  {
    this(paramb, parama, null, a(paramContext, parama, paramInt1, paramInt2, com.bumptech.glide.g.a(paramContext).a()));
  }
  
  f(b paramb, com.yelp.android.u.a parama, Handler paramHandler, e<com.yelp.android.u.a, com.yelp.android.u.a, Bitmap, Bitmap> parame)
  {
    Handler localHandler = paramHandler;
    if (paramHandler == null) {
      localHandler = new Handler(Looper.getMainLooper(), new c(null));
    }
    a = paramb;
    b = parama;
    c = localHandler;
    f = parame;
  }
  
  private static e<com.yelp.android.u.a, com.yelp.android.u.a, Bitmap, Bitmap> a(Context paramContext, com.yelp.android.u.a parama, int paramInt1, int paramInt2, com.yelp.android.x.c paramc)
  {
    paramc = new h(paramc);
    g localg = new g();
    com.bumptech.glide.load.a locala = com.yelp.android.ad.a.b();
    return com.bumptech.glide.g.b(paramContext).a(localg, com.yelp.android.u.a.class).a(parama).a(Bitmap.class).b(locala).b(paramc).b(true).b(DiskCacheStrategy.NONE).b(paramInt1, paramInt2);
  }
  
  private void e()
  {
    if ((!d) || (e)) {
      return;
    }
    e = true;
    b.a();
    long l1 = SystemClock.uptimeMillis();
    long l2 = b.b();
    a locala = new a(c, b.d(), l1 + l2);
    f.b(new d()).a(locala);
  }
  
  public void a()
  {
    if (d) {
      return;
    }
    d = true;
    h = false;
    e();
  }
  
  public void a(com.bumptech.glide.load.f<Bitmap> paramf)
  {
    if (paramf == null) {
      throw new NullPointerException("Transformation must not be null");
    }
    f = f.b(new com.bumptech.glide.load.f[] { paramf });
  }
  
  void a(a parama)
  {
    if (h)
    {
      c.obtainMessage(2, parama).sendToTarget();
      return;
    }
    a locala = g;
    g = parama;
    a.b(a.a(parama));
    if (locala != null) {
      c.obtainMessage(2, locala).sendToTarget();
    }
    e = false;
    e();
  }
  
  public void b()
  {
    d = false;
  }
  
  public void c()
  {
    b();
    if (g != null)
    {
      com.bumptech.glide.g.a(g);
      g = null;
    }
    h = true;
  }
  
  public Bitmap d()
  {
    if (g != null) {
      return g.a_();
    }
    return null;
  }
  
  static class a
    extends com.yelp.android.am.g<Bitmap>
  {
    private final Handler a;
    private final int b;
    private final long c;
    private Bitmap d;
    
    public a(Handler paramHandler, int paramInt, long paramLong)
    {
      a = paramHandler;
      b = paramInt;
      c = paramLong;
    }
    
    public void a(Bitmap paramBitmap, com.yelp.android.al.c<? super Bitmap> paramc)
    {
      d = paramBitmap;
      paramBitmap = a.obtainMessage(1, this);
      a.sendMessageAtTime(paramBitmap, c);
    }
    
    public Bitmap a_()
    {
      return d;
    }
  }
  
  public static abstract interface b
  {
    public abstract void b(int paramInt);
  }
  
  private class c
    implements Handler.Callback
  {
    private c() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      if (what == 1)
      {
        paramMessage = (f.a)obj;
        a(paramMessage);
        return true;
      }
      if (what == 2) {
        com.bumptech.glide.g.a((f.a)obj);
      }
      return false;
    }
  }
  
  static class d
    implements b
  {
    private final UUID a;
    
    public d()
    {
      this(UUID.randomUUID());
    }
    
    d(UUID paramUUID)
    {
      a = paramUUID;
    }
    
    public void a(MessageDigest paramMessageDigest)
      throws UnsupportedEncodingException
    {
      throw new UnsupportedOperationException("Not implemented");
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof d)) {
        return a.equals(a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */