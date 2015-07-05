package com.ooyala.android;

import android.util.Log;

class OoyalaPlayer$10
  implements AuthorizeCallback
{
  OoyalaPlayer$10(OoyalaPlayer paramOoyalaPlayer, String paramString) {}
  
  public void callback(boolean paramBoolean, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$000(this$0, val$taskKey);
    if (paramOoyalaException != null)
    {
      OoyalaPlayer.access$102(this$0, paramOoyalaException);
      Log.d(OoyalaPlayer.access$200(), "Movie is not authorized for this device!", paramOoyalaException);
      OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
      OoyalaPlayer.access$400(this$0, "error");
    }
    do
    {
      return;
      if (OoyalaPlayer.access$1200(this$0) != null) {
        OoyalaPlayer.access$1200(this$0).setBasePlayer(OoyalaPlayer.access$1300(this$0));
      }
    } while (OoyalaPlayer.access$1400(this$0) == null);
    OoyalaPlayer.access$1400(this$0).setBasePlayer(OoyalaPlayer.access$1300(this$0));
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */