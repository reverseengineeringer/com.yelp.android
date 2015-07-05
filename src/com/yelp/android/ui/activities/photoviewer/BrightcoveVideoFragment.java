package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.Catalog;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.widgets.ShadowBrightcoveVideoView;
import com.yelp.android.ui.widgets.ShadowView;

public class BrightcoveVideoFragment
  extends VideoPageFragment
{
  private ShadowBrightcoveVideoView e;
  
  public static BrightcoveVideoFragment a(Video paramVideo)
  {
    BrightcoveVideoFragment localBrightcoveVideoFragment = new BrightcoveVideoFragment();
    localBrightcoveVideoFragment.setArguments(b(paramVideo));
    return localBrightcoveVideoFragment;
  }
  
  protected int a()
  {
    return 2130903230;
  }
  
  protected void b()
  {
    e.start();
  }
  
  protected void c()
  {
    e.pause();
  }
  
  protected void e()
  {
    e.stopPlayback();
  }
  
  protected void f()
  {
    e.seekTo(0);
  }
  
  protected boolean g()
  {
    return e.isPlaying();
  }
  
  protected int h()
  {
    return e.getCurrentPosition();
  }
  
  protected int i()
  {
    return e.getDuration();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    e = ((ShadowBrightcoveVideoView)paramLayoutInflater.findViewById(2131493601));
    e.setShadowView((ShadowView)paramLayoutInflater.findViewById(2131493600));
    e.setOnPreparedListener(new m(this));
    e.getSurfaceView().setOnClickListener(new n(this));
    paramViewGroup = e.getEventEmitter();
    paramViewGroup.on("didPlay", new o(this));
    paramViewGroup.on("didPause", new p(this));
    paramViewGroup.on("completed", new q(this));
    new Catalog(c.getPlayerCode()).findVideoByID(c.getEmbedCode(), new r(this));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.BrightcoveVideoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */