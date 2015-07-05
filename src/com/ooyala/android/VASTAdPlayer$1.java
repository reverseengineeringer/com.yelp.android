package com.ooyala.android;

class VASTAdPlayer$1
  implements FetchPlaybackInfoCallback
{
  VASTAdPlayer$1(VASTAdPlayer paramVASTAdPlayer, OoyalaPlayer paramOoyalaPlayer) {}
  
  public void callback(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this$0._error = "Could not fetch VAST Ad";
      this$0.setState(OoyalaPlayer.State.ERROR);
    }
    while (VASTAdPlayer.access$000(this$0, val$parent)) {
      return;
    }
    this$0._error = "Bad VAST Ad";
    this$0.setState(OoyalaPlayer.State.ERROR);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTAdPlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */