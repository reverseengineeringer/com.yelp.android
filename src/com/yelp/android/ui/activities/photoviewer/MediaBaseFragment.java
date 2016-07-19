package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.panels.PanelLoading;

public abstract class MediaBaseFragment
  extends YelpFragment
{
  protected PanelLoading a;
  
  public void H_()
  {
    a.setVisibility(0);
  }
  
  public abstract Media k();
  
  public void l()
  {
    a.setVisibility(8);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.inflate(2130903250, paramViewGroup);
    a = ((PanelLoading)paramViewGroup.findViewById(2131689517));
    return paramViewGroup;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaBaseFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */