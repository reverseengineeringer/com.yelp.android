package com.ooyala.android;

class OoyalaPlayer$5
  implements FetchPlaybackInfoCallback
{
  OoyalaPlayer$5(OoyalaPlayer paramOoyalaPlayer, String paramString) {}
  
  public void callback(boolean paramBoolean)
  {
    OoyalaPlayer.access$000(this$0, val$taskKey);
    if (!paramBoolean)
    {
      OoyalaPlayer.access$102(this$0, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_PLAYBACK_FAILED));
      OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
    }
    while (OoyalaPlayer.access$700(this$0)) {
      return;
    }
    OoyalaPlayer.access$102(this$0, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_PLAYBACK_FAILED));
    OoyalaPlayer.access$300(this$0, OoyalaPlayer.State.ERROR);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */