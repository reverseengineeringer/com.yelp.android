package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.c;
import java.util.concurrent.ScheduledExecutorService;

class e
  extends com.yelp.android.ct.b<SessionEvent>
  implements n<SessionEvent>
{
  com.yelp.android.ct.k a;
  f b = new g();
  private final c h;
  
  public e(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, k paramk, c paramc)
  {
    super(paramContext, paramScheduledExecutorService, paramk);
    h = paramc;
  }
  
  public com.yelp.android.ct.k a()
  {
    return a;
  }
  
  public void a(SessionEvent paramSessionEvent)
  {
    if (b.a(paramSessionEvent))
    {
      CommonUtils.a(a.c().B(), "skipping filtered event " + paramSessionEvent);
      return;
    }
    super.a(paramSessionEvent);
  }
  
  public void a(io.fabric.sdk.android.services.settings.b paramb, String paramString)
  {
    a = b.a(new l(a.c(), paramString, a, h, new io.fabric.sdk.android.services.common.g().a(c)));
    ((k)d).a(paramb);
    a(b);
    if (g > 1) {
      b = new j(g);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */