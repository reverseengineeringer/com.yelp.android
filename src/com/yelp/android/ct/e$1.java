package com.yelp.android.ct;

import io.fabric.sdk.android.services.common.CommonUtils;

class e$1
  implements Runnable
{
  e$1(e parame, Object paramObject, boolean paramBoolean) {}
  
  public void run()
  {
    try
    {
      c.c.a(a);
      if (b) {
        c.c.e();
      }
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(c.a, "Failed to record event.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */