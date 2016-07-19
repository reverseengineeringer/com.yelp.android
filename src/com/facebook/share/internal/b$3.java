package com.facebook.share.internal;

import com.facebook.LoggingBehavior;
import com.facebook.i;
import com.facebook.i.a;
import com.facebook.internal.n;
import com.facebook.internal.u;

class b$3
  implements i.a
{
  b$3(b paramb, b.e parame, b.g paramg, b.k paramk) {}
  
  public void a(i parami)
  {
    b.c(d, a.e);
    if (u.a(b.h(d)))
    {
      b.c(d, b.e);
      b.d(d, b.f);
    }
    b localb;
    if (u.a(b.h(d)))
    {
      n.a(LoggingBehavior.DEVELOPER_ERRORS, b.f(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { b.j(d) });
      localb = d;
      if (b.c == null) {
        break label143;
      }
    }
    label143:
    for (parami = b.c;; parami = a.c)
    {
      b.a(localb, "get_verified_id", parami);
      if (c != null) {
        c.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */