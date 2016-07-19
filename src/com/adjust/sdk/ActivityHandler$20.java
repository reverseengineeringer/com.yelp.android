package com.adjust.sdk;

import android.content.Intent;
import android.net.Uri;

class ActivityHandler$20
  implements Runnable
{
  ActivityHandler$20(ActivityHandler paramActivityHandler, Uri paramUri, Intent paramIntent, String paramString) {}
  
  public void run()
  {
    boolean bool = true;
    if (access$2000this$0).onDeeplinkResponseListener != null) {
      bool = access$2000this$0).onDeeplinkResponseListener.launchReceivedDeeplink(val$location);
    }
    if (bool) {
      ActivityHandler.access$2200(this$0, val$deeplinkIntent, val$deeplink);
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ActivityHandler.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */