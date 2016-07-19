package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.i;
import com.facebook.i.a;

class b$10
  implements i.a
{
  b$10(b paramb, b.j paramj, Bundle paramBundle) {}
  
  public void a(i parami)
  {
    b.a(c, false);
    if (a.c != null)
    {
      b.b(c, true);
      return;
    }
    b.b(c, null);
    b.c(c, false);
    b.g(c).a("fb_like_control_did_unlike", null, b);
    b.a(c, b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */