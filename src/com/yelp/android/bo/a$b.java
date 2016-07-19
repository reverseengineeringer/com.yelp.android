package com.yelp.android.bo;

import com.yelp.android.bp.b;
import java.util.concurrent.TimeUnit;

class a$b
  implements Runnable
{
  private final a.a a;
  private final a b;
  private boolean c = false;
  
  public a$b(a.a parama, a parama1)
  {
    b = parama1;
    a = parama;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        com.path.android.jobqueue.a locala1;
        if (b.a())
        {
          if (!c)
          {
            b.a("starting consumer %s", new Object[] { Thread.currentThread().getName() });
            c = true;
          }
        }
        else
        {
          if (!a.a()) {
            break label233;
          }
          locala1 = a.a(a.a(b), TimeUnit.SECONDS);
          if (locala1 != null) {
            a.a(b, locala1);
          }
        }
        switch (locala1.a(locala1.d()))
        {
        case 1: 
          a.b(b, locala1);
          if (locala1 != null) {
            continue;
          }
          boolean bool = a.b(b);
          if (b.a())
          {
            if (!bool) {
              break label293;
            }
            b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
          }
          if (!bool) {
            continue;
          }
          return;
          b.a("re-running consumer %s", new Object[] { Thread.currentThread().getName() });
          continue;
          locala2 = null;
        }
      }
      finally
      {
        bool = a.b(b);
        if (b.a())
        {
          if (!bool) {
            break label314;
          }
          b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
        }
      }
      label233:
      com.path.android.jobqueue.a locala2;
      continue;
      locala2.m();
      a.b(locala2);
      continue;
      a.b(locala2);
      continue;
      a.a(locala2);
      continue;
      b.a("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the JobManager", new Object[0]);
      continue;
      label293:
      b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
      continue;
      label314:
      b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bo.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */