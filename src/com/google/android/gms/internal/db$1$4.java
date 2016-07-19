package com.google.android.gms.internal;

class db$1$4
  implements Runnable
{
  db$1$4(db.1 param1, cy paramcy) {}
  
  public void run()
  {
    synchronized (db.c(b.b))
    {
      if ((b.a.f() == -1) || (b.a.f() == 1)) {
        return;
      }
      b.a.e();
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.1.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */