package com.facebook.share.internal;

import com.facebook.appevents.AppEventsLogger;
import com.facebook.i;
import com.facebook.i.a;
import com.facebook.internal.u;

class b$9$1
  implements i.a
{
  b$9$1(b.9 param9, b.i parami) {}
  
  public void a(i parami)
  {
    b.a(b.b, false);
    if (a.c != null)
    {
      b.b(b.b, false);
      return;
    }
    b.b(b.b, u.a(a.e, null));
    b.c(b.b, true);
    b.g(b.b).a("fb_like_control_did_like", null, b.a);
    b.a(b.b, b.a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.9.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */