package com.yelp.android.ui.activities.photoviewer;

import com.brightcove.player.media.VideoListener;
import com.brightcove.player.model.Video;
import com.yelp.android.ui.widgets.ShadowBrightcoveVideoView;

class r
  implements VideoListener
{
  r(BrightcoveVideoFragment paramBrightcoveVideoFragment) {}
  
  public void onError(String paramString) {}
  
  public void onVideo(Video paramVideo)
  {
    BrightcoveVideoFragment.a(a).add(paramVideo);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */