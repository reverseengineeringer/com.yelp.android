package com.yelp.android.ct;

import io.fabric.sdk.android.services.common.CommonUtils;

class e$4
  implements Runnable
{
  e$4(e parame) {}
  
  public void run()
  {
    try
    {
      i locali = a.c;
      a.c = a.a();
      locali.c();
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(a.a, "Failed to disable events.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.e.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */