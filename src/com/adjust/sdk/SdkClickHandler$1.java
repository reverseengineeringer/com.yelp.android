package com.adjust.sdk;

import java.util.List;

class SdkClickHandler$1
  implements Runnable
{
  SdkClickHandler$1(SdkClickHandler paramSdkClickHandler, ActivityPackage paramActivityPackage) {}
  
  public void run()
  {
    SdkClickHandler.access$000(this$0).add(val$sdkClick);
    SdkClickHandler.access$100(this$0).debug("Added sdk_click %d", new Object[] { Integer.valueOf(SdkClickHandler.access$000(this$0).size()) });
    SdkClickHandler.access$100(this$0).verbose("%s", new Object[] { val$sdkClick.getExtendedString() });
    SdkClickHandler.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.SdkClickHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */