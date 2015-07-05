package com.ooyala.android;

import android.util.Log;

class OoyalaPlayer$3
  implements MetadataFetchedCallback
{
  OoyalaPlayer$3(OoyalaPlayer paramOoyalaPlayer, String paramString) {}
  
  public void callback(boolean paramBoolean, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$000(this$0, val$metadataTaskKey);
    if (paramOoyalaException != null)
    {
      OoyalaPlayer.access$102(this$0, paramOoyalaException);
      Log.d(OoyalaPlayer.access$200(), "Exception fetching metadata from setEmbedCodes!", paramOoyalaException);
      OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
      OoyalaPlayer.access$400(this$0, "error");
      return;
    }
    OoyalaPlayer.access$400(this$0, "metadataReady");
    OoyalaPlayer.access$600(this$0);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */