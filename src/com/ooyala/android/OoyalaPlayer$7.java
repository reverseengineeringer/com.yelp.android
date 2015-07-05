package com.ooyala.android;

import android.util.Log;

class OoyalaPlayer$7
  implements AuthorizeCallback
{
  OoyalaPlayer$7(OoyalaPlayer paramOoyalaPlayer, String paramString) {}
  
  public void callback(boolean paramBoolean, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$000(this$0, val$taskKey);
    if (paramOoyalaException != null)
    {
      OoyalaPlayer.access$102(this$0, paramOoyalaException);
      Log.d(OoyalaPlayer.access$200(), "Error Reauthorizing Video", paramOoyalaException);
      OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
      OoyalaPlayer.access$400(this$0, "error");
      return;
    }
    OoyalaPlayer.access$400(this$0, "authorizationReady");
    if (!OoyalaPlayer.access$900(this$0).isAuthorized())
    {
      OoyalaPlayer.access$102(this$0, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_FAILED));
      return;
    }
    OoyalaPlayer.access$1002(this$0, System.currentTimeMillis());
    this$0.resume();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */