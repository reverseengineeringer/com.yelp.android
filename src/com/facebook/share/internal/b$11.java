package com.facebook.share.internal;

import com.facebook.LoggingBehavior;
import com.facebook.i;
import com.facebook.i.a;
import com.facebook.internal.n;

class b$11
  implements b.k
{
  b$11(b paramb) {}
  
  public void a()
  {
    final b.f localf = new b.f(a, b.h(a), b.i(a));
    final b.d locald = new b.d(a, b.h(a), b.i(a));
    i locali = new i();
    localf.a(locali);
    locald.a(locali);
    locali.a(new i.a()
    {
      public void a(i paramAnonymousi)
      {
        if ((localfc != null) || (localdc != null))
        {
          n.a(LoggingBehavior.REQUESTS, b.f(), "Unable to refresh like state for id: '%s'", new Object[] { b.j(a) });
          return;
        }
        b.a(a, localfe, localde, localdf, localdg, localdh, localff);
      }
    });
    locali.h();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */