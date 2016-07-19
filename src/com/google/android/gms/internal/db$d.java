package com.google.android.gms.internal;

public class db$d
  extends hv<dc>
{
  private final Object d = new Object();
  private final db.e e;
  private boolean f;
  
  public db$d(db.e parame)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */