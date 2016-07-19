package com.google.android.gms.internal;

import android.os.Handler;
import java.util.Map;

class db$1
  implements Runnable
{
  db$1(db paramdb, db.e parame) {}
  
  public void run()
  {
    final cy localcy = b.a(db.a(b), db.b(b));
    localcy.a(new cy.a()
    {
      public void a()
      {
        hd.a.postDelayed(new Runnable()
        {
          public void run()
          {
            synchronized (db.c(b))
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
      public void a(ib arg1, Map<String, String> paramAnonymousMap)
      {
        synchronized (db.c(b))
        {
          if ((a.f() == -1) || (a.f() == 1)) {
            return;
          }
          db.a(b, 0);
          db.d(b).a(localcy);
          a.a(localcy);
          db.a(b, a);
          gz.e("Successfully loaded JS Engine.");
          return;
        }
      }
    });
    final hm localhm = new hm();
    bz local3 = new bz()
    {
      public void a(ib arg1, Map<String, String> paramAnonymousMap)
      {
        synchronized (db.c(b))
        {
          gz.c("JS Engine is requesting an update");
          if (db.e(b) == 0)
          {
            gz.c("Starting reload.");
            db.a(b, 2);
            b.a();
          }
          localcy.b("/requestReload", (bz)localhm.a());
          return;
        }
      }
    };
    localhm.a(local3);
    localcy.a("/requestReload", local3);
    if (db.f(b).endsWith(".js")) {
      localcy.a(db.f(b));
    }
    for (;;)
    {
      hd.a.postDelayed(new Runnable()
      {
        public void run()
        {
          synchronized (db.c(b))
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
      if (db.f(b).startsWith("<html>")) {
        localcy.c(db.f(b));
      } else {
        localcy.b(db.f(b));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */