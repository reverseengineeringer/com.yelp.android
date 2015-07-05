package com.ooyala.android;

import android.util.Log;

class OoyalaPlayer$2
  implements ContentTreeCallback
{
  OoyalaPlayer$2(OoyalaPlayer paramOoyalaPlayer, String paramString) {}
  
  public void callback(ContentItem paramContentItem, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$000(this$0, val$taskKey);
    if (paramOoyalaException != null)
    {
      OoyalaPlayer.access$102(this$0, paramOoyalaException);
      Log.d(OoyalaPlayer.access$200(), "Exception in setExternalIds!", paramOoyalaException);
      OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
      OoyalaPlayer.access$400(this$0, "error");
      return;
    }
    OoyalaPlayer.access$500(this$0, paramContentItem);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */