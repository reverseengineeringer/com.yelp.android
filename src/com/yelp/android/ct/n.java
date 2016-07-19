package com.yelp.android.ct;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;

public class n
  implements Runnable
{
  private final Context a;
  private final j b;
  
  public n(Context paramContext, j paramj)
  {
    a = paramContext;
    b = paramj;
  }
  
  public void run()
  {
    try
    {
      CommonUtils.a(a, "Performing time based file roll over.");
      if (!b.e()) {
        b.d();
      }
      return;
    }
    catch (Exception localException)
    {
      CommonUtils.a(a, "Failed to roll over file", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */