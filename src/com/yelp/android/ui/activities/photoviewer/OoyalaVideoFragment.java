package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.ooyala.android.OoyalaPlayer;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.widgets.ShadowOoyalaPlayerLayout;
import com.yelp.android.ui.widgets.ShadowView;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.Observer;

public class OoyalaVideoFragment
  extends VideoPageFragment
{
  private OoyalaPlayer e;
  private ShadowOoyalaPlayerLayout g;
  private WebImageView h;
  private final Observer i = new u(this);
  
  public static OoyalaVideoFragment a(Video paramVideo)
  {
    OoyalaVideoFragment localOoyalaVideoFragment = new OoyalaVideoFragment();
    localOoyalaVideoFragment.setArguments(b(paramVideo));
    return localOoyalaVideoFragment;
  }
  
  protected int a()
  {
    return 2130903231;
  }
  
  protected void b()
  {
    e.play();
  }
  
  protected void c()
  {
    e.pause();
  }
  
  protected void e()
  {
    e.pause();
  }
  
  protected void f()
  {
    e.seek(0);
  }
  
  protected boolean g()
  {
    return e.isPlaying();
  }
  
  protected int h()
  {
    return e.getPlayheadTime();
  }
  
  protected int i()
  {
    return e.getDuration();
  }
  
  protected void k()
  {
    super.k();
    h.setVisibility(0);
  }
  
  protected void l()
  {
    super.l();
    h.setVisibility(0);
  }
  
  protected void m()
  {
    super.m();
    h.setVisibility(8);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    g = ((ShadowOoyalaPlayerLayout)paramLayoutInflater.findViewById(2131493601));
    g.setShadowView((ShadowView)paramLayoutInflater.findViewById(2131493600));
    g.getPlayerFrame().setOnClickListener(new t(this));
    h = ((WebImageView)paramLayoutInflater.findViewById(2131493603));
    h.setImageUrl(c.getThumbnailUrl());
    e = new au(g, c.getPlayerCode(), "https://www.ooyala.com").getPlayer();
    e.addObserver(i);
    e.setEmbedCode(c.getEmbedCode());
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    e.suspend();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.OoyalaVideoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */