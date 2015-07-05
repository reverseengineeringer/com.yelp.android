package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventLogger;

@TargetApi(11)
public class BrightcovePlayerFragment
  extends Fragment
{
  protected static final String POSITION = "position";
  public static final String TAG = BrightcovePlayerFragment.class.getSimpleName();
  protected BrightcoveVideoView brightcoveVideoView;
  private int originalLayoutParamsHeight;
  private int originalLayoutParamsWidth;
  private int position;
  private boolean wasPlaying;
  
  public void fullScreen()
  {
    Object localObject = getActivity().getActionBar();
    if (localObject != null) {
      ((ActionBar)localObject).hide();
    }
    localObject = getActivity().getWindow().getAttributes();
    flags |= 0x400;
    getActivity().getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    Log.v(TAG, "fullScreen: " + originalLayoutParamsWidth + "x" + originalLayoutParamsHeight);
    localObject = brightcoveVideoView.getLayoutParams();
    originalLayoutParamsWidth = width;
    originalLayoutParamsHeight = height;
    width = -1;
    height = -1;
    brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
  
  public BrightcoveVideoView getBrightcoveVideoView()
  {
    return brightcoveVideoView;
  }
  
  public void normalScreen()
  {
    Log.v(TAG, "normalScreen: " + originalLayoutParamsWidth + "x" + originalLayoutParamsHeight);
    if ((originalLayoutParamsWidth != Integer.MIN_VALUE) && (originalLayoutParamsHeight != Integer.MIN_VALUE))
    {
      Object localObject = getActivity().getActionBar();
      if (localObject != null) {
        ((ActionBar)localObject).show();
      }
      localObject = getActivity().getWindow().getAttributes();
      flags ^= 0x400;
      getActivity().getWindow().setAttributes((WindowManager.LayoutParams)localObject);
      localObject = brightcoveVideoView.getLayoutParams();
      width = originalLayoutParamsWidth;
      height = originalLayoutParamsHeight;
      brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      originalLayoutParamsWidth = Integer.MIN_VALUE;
      originalLayoutParamsHeight = Integer.MIN_VALUE;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (brightcoveVideoView != null)
    {
      new EventLogger(brightcoveVideoView.getEventEmitter(), true, getClass().getSimpleName());
      if (paramBundle != null) {
        position = paramBundle.getInt("position");
      }
      paramViewGroup = new MediaController(getActivity());
      brightcoveVideoView.setMediaController(paramViewGroup);
      return paramLayoutInflater;
    }
    throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
  }
  
  public void onDestroyView()
  {
    Log.v(TAG, "onDestroyView");
    super.onDestroyView();
    brightcoveVideoView.getEventEmitter().off();
  }
  
  public void onPause()
  {
    Log.v(TAG, "onPause");
    super.onPause();
    if (brightcoveVideoView.isPlaying())
    {
      brightcoveVideoView.pause();
      wasPlaying = true;
      return;
    }
    wasPlaying = false;
  }
  
  public void onResume()
  {
    Log.v(TAG, "onResume");
    super.onResume();
    if (wasPlaying)
    {
      if (position > 0)
      {
        brightcoveVideoView.seekTo(position);
        position = -1;
      }
      brightcoveVideoView.start();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("position", position);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    Log.v(TAG, "onStart");
    super.onStart();
  }
  
  public void onStop()
  {
    Log.v(TAG, "onStop");
    super.onStop();
    position = brightcoveVideoView.getCurrentPosition();
    brightcoveVideoView.stopPlayback();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */