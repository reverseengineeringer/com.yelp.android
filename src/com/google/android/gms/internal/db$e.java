package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;

public class db$e
  extends hv<cy>
{
  private final Object d = new Object();
  private db.b<cy> e;
  private boolean f;
  private int g;
  
  public db$e(db.b<cy> paramb)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */