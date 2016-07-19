package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.i;
import com.facebook.i.a;
import com.facebook.internal.u;

class b$9
  implements b.k
{
  b$9(b paramb, Bundle paramBundle) {}
  
  public void a()
  {
    if (u.a(b.h(b)))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
      b.b(b, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
      return;
    }
    Object localObject = new i();
    final b.i locali = new b.i(b, b.h(b), b.i(b));
    locali.a((i)localObject);
    ((i)localObject).a(new i.a()
    {
      public void a(i paramAnonymousi)
      {
        b.a(b, false);
        if (localic != null)
        {
          b.b(b, false);
          return;
        }
        b.b(b, u.a(localie, null));
        b.c(b, true);
        b.g(b).a("fb_like_control_did_like", null, a);
        b.a(b, a);
      }
    });
    ((i)localObject).h();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */