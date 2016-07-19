package com.yelp.android.ct;

import io.fabric.sdk.android.services.common.CommonUtils;

class e$3
  implements Runnable
{
  e$3(e parame) {}
  
  public void run()
  {
    try
    {
      a.c.b();
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(a.a, "Failed to send events files.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.e.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */