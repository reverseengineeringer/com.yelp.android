package com.ooyala.android;

class OoyalaAdPlayer$1
  implements AuthorizeCallback
{
  OoyalaAdPlayer$1(OoyalaAdPlayer paramOoyalaAdPlayer, OoyalaPlayer paramOoyalaPlayer) {}
  
  public void callback(boolean paramBoolean, OoyalaException paramOoyalaException)
  {
    if ((paramOoyalaException != null) || (!OoyalaAdPlayer.access$000(this$0).isAuthorized()))
    {
      this$0._error = "Error fetching VAST XML";
      this$0.setState(OoyalaPlayer.State.ERROR);
      return;
    }
    OoyalaAdPlayer.access$100(this$0, val$parent);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAdPlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */