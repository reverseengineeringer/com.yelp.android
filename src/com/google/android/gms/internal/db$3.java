package com.google.android.gms.internal;

class db$3
  implements hu.a
{
  db$3(db paramdb, db.e parame) {}
  
  public void a()
  {
    synchronized (db.c(b))
    {
      db.a(b, 1);
      gz.e("Failed loading new engine. Marking new engine destroyable.");
      a.c();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */