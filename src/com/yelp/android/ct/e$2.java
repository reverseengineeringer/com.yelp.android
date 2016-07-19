package com.yelp.android.ct;

import io.fabric.sdk.android.services.common.CommonUtils;

class e$2
  implements Runnable
{
  e$2(e parame, Object paramObject) {}
  
  public void run()
  {
    try
    {
      b.c.a(a);
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(b.a, "Crashlytics failed to record event", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.e.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */