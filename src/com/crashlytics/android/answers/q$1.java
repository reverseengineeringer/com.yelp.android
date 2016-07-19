package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.b;

class q$1
  implements Runnable
{
  q$1(q paramq, b paramb, String paramString) {}
  
  public void run()
  {
    try
    {
      ((n)q.a(c)).a(a, b);
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(a.c().B(), "Crashlytics failed to set analytics settings data.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.q.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */