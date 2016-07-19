package com.google.android.gms.internal;

import java.util.Map;

class db$1$3
  implements bz
{
  db$1$3(db.1 param1, cy paramcy, hm paramhm) {}
  
  public void a(ib arg1, Map<String, String> paramMap)
  {
    synchronized (db.c(c.b))
    {
      gz.c("JS Engine is requesting an update");
      if (db.e(c.b) == 0)
      {
        gz.c("Starting reload.");
        db.a(c.b, 2);
        c.b.a();
      }
      a.b("/requestReload", (bz)b.a());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db.1.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */