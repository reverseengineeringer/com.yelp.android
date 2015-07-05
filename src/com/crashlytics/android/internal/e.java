package com.crashlytics.android.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import java.util.concurrent.ScheduledExecutorService;

@TargetApi(14)
final class e
  extends n
{
  private final Application b;
  private final Application.ActivityLifecycleCallbacks c = new f(this);
  
  public e(Application paramApplication, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, j paramj, bu parambu)
  {
    this(paramApplication, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramj, bi.b("Crashlytics Trace Manager"), parambu);
  }
  
  private e(Application paramApplication, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, j paramj, ScheduledExecutorService paramScheduledExecutorService, bu parambu)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramj, paramScheduledExecutorService, parambu);
    b = paramApplication;
    bd.c("Registering activity lifecycle callbacks for session analytics.");
    paramApplication.registerActivityLifecycleCallbacks(c);
  }
  
  final void a()
  {
    bd.c("Unregistering activity lifecycle callbacks for session analytics");
    b.unregisterActivityLifecycleCallbacks(c);
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */