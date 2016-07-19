package com.facebook.share.internal;

import com.facebook.LoggingBehavior;
import com.facebook.i;
import com.facebook.i.a;
import com.facebook.internal.n;

class b$11$1
  implements i.a
{
  b$11$1(b.11 param11, b.f paramf, b.d paramd) {}
  
  public void a(i parami)
  {
    if ((a.c != null) || (b.c != null))
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Unable to refresh like state for id: '%s'", new Object[] { b.j(c.a) });
      return;
    }
    b.a(c.a, a.e, b.e, b.f, b.g, b.h, a.f);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.11.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */