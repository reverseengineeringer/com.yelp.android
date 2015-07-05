package com.yelp.android.as;

import java.util.concurrent.TimeUnit;

class c
  implements Runnable
{
  private final b a;
  private final a b;
  private boolean c = false;
  
  public c(b paramb, a parama)
  {
    b = parama;
    a = paramb;
  }
  
  public void run()
  {
    try
    {
      if (com.yelp.android.at.b.a())
      {
        if (c) {
          break label154;
        }
        com.yelp.android.at.b.a("starting consumer %s", new Object[] { Thread.currentThread().getName() });
        c = true;
      }
      for (;;)
      {
        if (a.a())
        {
          com.path.android.jobqueue.b localb1 = a.a(a.a(b), TimeUnit.SECONDS);
          if (localb1 != null)
          {
            a.a(b, localb1);
            if (!localb1.a(localb1.d())) {
              break label219;
            }
            a.b(localb1);
            label101:
            a.b(b, localb1);
          }
          if (localb1 == null)
          {
            boolean bool = a.b(b);
            if (com.yelp.android.at.b.a())
            {
              if (!bool) {
                break label232;
              }
              com.yelp.android.at.b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
            }
            label149:
            if (!bool) {
              break;
            }
            return;
            label154:
            com.yelp.android.at.b.a("re-running consumer %s", new Object[] { Thread.currentThread().getName() });
            continue;
            throw ((Throwable)localObject);
          }
        }
      }
    }
    finally
    {
      bool = a.b(b);
      if (com.yelp.android.at.b.a())
      {
        if (!bool) {
          break label253;
        }
        com.yelp.android.at.b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
      }
    }
    for (;;)
    {
      com.path.android.jobqueue.b localb2 = null;
      break;
      label219:
      a.a(localb2);
      break label101;
      label232:
      com.yelp.android.at.b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
      break label149;
      label253:
      com.yelp.android.at.b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.as.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */