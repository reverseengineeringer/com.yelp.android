package com.ooyala.android;

class OoyalaAdPlayer$2
  implements AuthorizeCallback
{
  OoyalaAdPlayer$2(OoyalaAdPlayer paramOoyalaAdPlayer, StreamPlayer paramStreamPlayer) {}
  
  public void callback(boolean paramBoolean, OoyalaException paramOoyalaException)
  {
    if ((paramOoyalaException != null) || (!OoyalaAdPlayer.access$000(this$0).isAuthorized())) {
      return;
    }
    OoyalaAdPlayer.access$200(this$0, val$player);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAdPlayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */