package com.crashlytics.android.answers;

import android.content.Context;
import com.yelp.android.ct.e;
import com.yelp.android.ct.i;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.b;
import java.util.concurrent.ScheduledExecutorService;

class q
  extends e<SessionEvent>
{
  q(Context paramContext, i<SessionEvent> parami, k paramk, ScheduledExecutorService paramScheduledExecutorService)
  {
    super(paramContext, parami, paramk, paramScheduledExecutorService);
  }
  
  protected i<SessionEvent> a()
  {
    return new d();
  }
  
  protected void a(final b paramb, final String paramString)
  {
    super.b(new Runnable()
    {
      public void run()
      {
        try
        {
          ((n)q.a(q.this)).a(paramb, paramString);
          return;
        }
        catch (Exception localException)
        {
          CommonUtils.a(a.c().B(), "Crashlytics failed to set analytics settings data.", localException);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */