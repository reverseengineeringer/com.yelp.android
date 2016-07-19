package com.google.android.gms.internal;

class db$2
  implements hu.c<cy>
{
  db$2(db paramdb, db.e parame) {}
  
  public void a(cy arg1)
  {
    synchronized (db.c(b))
    {
      db.a(b, 0);
      if ((db.g(b) != null) && (a != db.g(b)))
      {
        gz.e("New JS engine is loaded, marking previous one as destroyable.");
        db.g(b).c();
      }
      db.a(b, a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */