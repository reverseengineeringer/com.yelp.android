package com.adjust.sdk;

import android.os.SystemClock;
import java.text.DecimalFormat;
import java.util.List;

class SdkClickHandler$2
  implements Runnable
{
  SdkClickHandler$2(SdkClickHandler paramSdkClickHandler) {}
  
  public void run()
  {
    if (SdkClickHandler.access$300(this$0)) {}
    while (SdkClickHandler.access$000(this$0).isEmpty()) {
      return;
    }
    ActivityPackage localActivityPackage = (ActivityPackage)SdkClickHandler.access$000(this$0).get(0);
    int i = localActivityPackage.getRetries();
    if (i > 0)
    {
      long l = Util.getWaitingTime(i, SdkClickHandler.access$400(this$0));
      double d = l / 1000.0D;
      String str = Util.SecondsDisplayFormat.format(d);
      SdkClickHandler.access$100(this$0).verbose("Sleeping for %s seconds before retrying sdk_click for the %d time", new Object[] { str, Integer.valueOf(i) });
      SystemClock.sleep(l);
    }
    SdkClickHandler.access$500(this$0, localActivityPackage);
    SdkClickHandler.access$000(this$0).remove(0);
    SdkClickHandler.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.SdkClickHandler.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */