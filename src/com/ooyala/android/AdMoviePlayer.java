package com.ooyala.android;

import android.widget.FrameLayout;

public abstract class AdMoviePlayer
  extends MoviePlayer
{
  public abstract AdSpot getAd();
  
  public void init(OoyalaPlayer paramOoyalaPlayer, AdSpot paramAdSpot) {}
  
  public void processClickThrough() {}
  
  public void updateLearnMoreButton(FrameLayout paramFrameLayout, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.ooyala.android.AdMoviePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */