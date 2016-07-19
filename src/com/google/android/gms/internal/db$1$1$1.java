package com.google.android.gms.internal;

class db$1$1$1
  implements Runnable
{
  db$1$1$1(db.1.1 param1) {}
  
  public void run()
  {
    synchronized (db.c(a.b.b))
    {
      if ((a.b.a.f() == -1) || (a.b.a.f() == 1)) {
        return;
      }
      a.b.a.e();
      hd.a(new Runnable()
      {
        public void run()
        {
          a.a.a();
        }
      });
      gz.e("Could not receive loaded message in a timely manner. Rejecting.");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */