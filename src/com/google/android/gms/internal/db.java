package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;

@fv
public class db
{
  private final Object a = new Object();
  private final Context b;
  private final String c;
  private final VersionInfoParcel d;
  private b<cy> e;
  private b<cy> f;
  private e g;
  private int h = 1;
  
  public db(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString)
  {
    c = paramString;
    b = paramContext.getApplicationContext();
    d = paramVersionInfoParcel;
    e = new c();
    f = new c();
  }
  
  public db(Context paramContext, VersionInfoParcel paramVersionInfoParcel, String paramString, b<cy> paramb1, b<cy> paramb2)
  {
    this(paramContext, paramVersionInfoParcel, paramString);
    e = paramb1;
    f = paramb2;
  }
  
  private e c()
  {
    final e locale = new e(f);
    hd.a(new Runnable()
    {
      public void run()
      {
        final cy localcy = a(db.a(db.this), db.b(db.this));
        localcy.a(new cy.a()
        {
          public void a()
          {
            hd.a.postDelayed(new Runnable()
            {
              public void run()
              {
                synchronized (db.c(db.this))
                {
                  if ((a.f() == -1) || (a.f() == 1)) {
                    return;
                  }
                  a.e();
                  hd.a(new Runnable()
                  {
                    public void run()
                    {
                      a.a();
                    }
                  });
                  gz.e("Could not receive loaded message in a timely manner. Rejecting.");
                  return;
                }
              }
            }, db.a.b);
          }
        });
        localcy.a("/jsLoaded", new bz()
        {
          public void a(ib arg1, Map<String, String> paramAnonymous2Map)
          {
            synchronized (db.c(db.this))
            {
              if ((a.f() == -1) || (a.f() == 1)) {
                return;
              }
              db.a(db.this, 0);
              db.d(db.this).a(localcy);
              a.a(localcy);
              db.a(db.this, a);
              gz.e("Successfully loaded JS Engine.");
              return;
            }
          }
        });
        final hm localhm = new hm();
        bz local3 = new bz()
        {
          public void a(ib arg1, Map<String, String> paramAnonymous2Map)
          {
            synchronized (db.c(db.this))
            {
              gz.c("JS Engine is requesting an update");
              if (db.e(db.this) == 0)
              {
                gz.c("Starting reload.");
                db.a(db.this, 2);
                a();
              }
              localcy.b("/requestReload", (bz)localhm.a());
              return;
            }
          }
        };
        localhm.a(local3);
        localcy.a("/requestReload", local3);
        if (db.f(db.this).endsWith(".js")) {
          localcy.a(db.f(db.this));
        }
        for (;;)
        {
          hd.a.postDelayed(new Runnable()
          {
            public void run()
            {
              synchronized (db.c(db.this))
              {
                if ((a.f() == -1) || (a.f() == 1)) {
                  return;
                }
                a.e();
                hd.a(new Runnable()
                {
                  public void run()
                  {
                    a.a();
                  }
                });
                gz.e("Could not receive loaded message in a timely manner. Rejecting.");
                return;
              }
            }
          }, db.a.a);
          return;
          if (db.f(db.this).startsWith("<html>")) {
            localcy.c(db.f(db.this));
          } else {
            localcy.b(db.f(db.this));
          }
        }
      }
    });
    return locale;
  }
  
  protected cy a(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    return new da(paramContext, paramVersionInfoParcel, null);
  }
  
  protected e a()
  {
    final e locale = c();
    locale.a(new hu.c()new hu.a
    {
      public void a(cy arg1)
      {
        synchronized (db.c(db.this))
        {
          db.a(db.this, 0);
          if ((db.g(db.this) != null) && (locale != db.g(db.this)))
          {
            gz.e("New JS engine is loaded, marking previous one as destroyable.");
            db.g(db.this).c();
          }
          db.a(db.this, locale);
          return;
        }
      }
    }, new hu.a()
    {
      public void a()
      {
        synchronized (db.c(db.this))
        {
          db.a(db.this, 1);
          gz.e("Failed loading new engine. Marking new engine destroyable.");
          locale.c();
          return;
        }
      }
    });
    return locale;
  }
  
  public d b()
  {
    synchronized (a)
    {
      d locald1;
      if ((g == null) || (g.f() == -1))
      {
        h = 2;
        g = a();
        locald1 = g.a();
        return locald1;
      }
      if (h == 0)
      {
        locald1 = g.a();
        return locald1;
      }
    }
    if (h == 1)
    {
      h = 2;
      a();
      locald2 = g.a();
      return locald2;
    }
    if (h == 2)
    {
      locald2 = g.a();
      return locald2;
    }
    d locald2 = g.a();
    return locald2;
  }
  
  static class a
  {
    static int a = 60000;
    static int b = 10000;
  }
  
  public static abstract interface b<T>
  {
    public abstract void a(T paramT);
  }
  
  public static class c<T>
    implements db.b<T>
  {
    public void a(T paramT) {}
  }
  
  public static class d
    extends hv<dc>
  {
    private final Object d = new Object();
    private final db.e e;
    private boolean f;
    
    public d(db.e parame)
    {
      e = parame;
    }
    
    public void a()
    {
      synchronized (d)
      {
        if (f) {
          return;
        }
        f = true;
        a(new hu.c()new hu.b
        {
          public void a(dc paramAnonymousdc)
          {
            gz.e("Ending javascript session.");
            ((dd)paramAnonymousdc).a();
          }
        }, new hu.b());
        a(new hu.c()new hu.a
        {
          public void a(dc paramAnonymousdc)
          {
            gz.e("Releasing engine reference.");
            db.d.a(db.d.this).b();
          }
        }, new hu.a()
        {
          public void a()
          {
            db.d.a(db.d.this).b();
          }
        });
        return;
      }
    }
  }
  
  public static class e
    extends hv<cy>
  {
    private final Object d = new Object();
    private db.b<cy> e;
    private boolean f;
    private int g;
    
    public e(db.b<cy> paramb)
    {
      e = paramb;
      f = false;
      g = 0;
    }
    
    public db.d a()
    {
      final db.d locald = new db.d(this);
      for (;;)
      {
        synchronized (d)
        {
          a(new hu.c()new hu.a
          {
            public void a(cy paramAnonymouscy)
            {
              gz.e("Getting a new session for JS Engine.");
              locald.a(paramAnonymouscy.b());
            }
          }, new hu.a()
          {
            public void a()
            {
              gz.e("Rejecting reference for JS Engine.");
              locald.e();
            }
          });
          if (g >= 0)
          {
            bool = true;
            zzx.zzab(bool);
            g += 1;
            return locald;
          }
        }
        boolean bool = false;
      }
    }
    
    protected void b()
    {
      for (boolean bool = true;; bool = false) {
        synchronized (d)
        {
          if (g >= 1)
          {
            zzx.zzab(bool);
            gz.e("Releasing 1 reference for JS Engine");
            g -= 1;
            d();
            return;
          }
        }
      }
    }
    
    public void c()
    {
      for (boolean bool = true;; bool = false) {
        synchronized (d)
        {
          if (g >= 0)
          {
            zzx.zzab(bool);
            gz.e("Releasing root reference. JS Engine will be destroyed once other references are released.");
            f = true;
            d();
            return;
          }
        }
      }
    }
    
    protected void d()
    {
      for (;;)
      {
        synchronized (d)
        {
          if (g >= 0)
          {
            bool = true;
            zzx.zzab(bool);
            if ((f) && (g == 0))
            {
              gz.e("No reference is left (including root). Cleaning up engine.");
              a(new hu.c()new hu.b
              {
                public void a(final cy paramAnonymouscy)
                {
                  hd.a(new Runnable()
                  {
                    public void run()
                    {
                      db.e.a(db.e.this).a(paramAnonymouscy);
                      paramAnonymouscy.a();
                    }
                  });
                }
              }, new hu.b());
              return;
            }
            gz.e("There are still references to the engine. Not destroying.");
          }
        }
        boolean bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */