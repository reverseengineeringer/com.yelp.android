package com.google.android.gms.internal;

import java.util.Map;

class db$1$2
  implements bz
{
  db$1$2(db.1 param1, cy paramcy) {}
  
  public void a(ib arg1, Map<String, String> paramMap)
  {
    synchronized (db.c(b.b))
    {
      if ((b.a.f() == -1) || (b.a.f() == 1)) {
        return;
      }
      db.a(b.b, 0);
      db.d(b.b).a(a);
      b.a.a(a);
      db.a(b.b, b.a);
      gz.e("Successfully loaded JS Engine.");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */