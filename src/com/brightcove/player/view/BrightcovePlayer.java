package com.brightcove.player.view;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.MediaController;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventLogger;

public class BrightcovePlayer
  extends Activity
{
  protected static final String POSITION = "position";
  public static final String TAG = BrightcovePlayer.class.getSimpleName();
  protected BrightcoveVideoView brightcoveVideoView;
  private int originalLayoutParamsHeight;
  private int originalLayoutParamsWidth;
  private int position;
  private boolean wasPlaying;
  
  @SuppressLint({"NewApi"})
  private void hideActionBar()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActionBar localActionBar = getActionBar();
      if (localActionBar != null) {
        localActionBar.hide();
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private void showActionBar()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActionBar localActionBar = getActionBar();
      if (localActionBar != null) {
        localActionBar.show();
      }
    }
  }
  
  public void fullScreen()
  {
    hideActionBar();
    Object localObject = getWindow().getAttributes();
    flags |= 0x400;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
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
      showActionBar();
      Object localObject = getWindow().getAttributes();
      flags ^= 0x400;
      getWindow().setAttributes((WindowManager.LayoutParams)localObject);
      localObject = brightcoveVideoView.getLayoutParams();
      width = originalLayoutParamsWidth;
      height = originalLayoutParamsHeight;
      brightcoveVideoView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      originalLayoutParamsWidth = Integer.MIN_VALUE;
      originalLayoutParamsHeight = Integer.MIN_VALUE;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (brightcoveVideoView != null)
    {
      new EventLogger(brightcoveVideoView.getEventEmitter(), true, getClass().getSimpleName());
      if (paramBundle != null) {
        position = paramBundle.getInt("position");
      }
      paramBundle = new MediaController(this);
      brightcoveVideoView.setMediaController(paramBundle);
      return;
    }
    throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
  }
  
  protected void onDestroy()
  {
    Log.v(TAG, "onDestroy");
    super.onDestroy();
    brightcoveVideoView.getEventEmitter().off();
  }
  
  protected void onPause()
  {
    Log.v(TAG, "onPause");
    super.onPause();
    if (brightcoveVideoView.isPlaying())
    {
      brightcoveVideoView.pause();
      wasPlaying = true;
    }
  }
  
  protected void onRestart()
  {
    Log.v(TAG, "onRestart");
    super.onRestart();
    if (position > 0)
    {
      brightcoveVideoView.seekTo(position);
      position = -1;
    }
  }
  
  protected void onResume()
  {
    Log.v(TAG, "onResume");
    super.onResume();
    if (wasPlaying) {
      brightcoveVideoView.start();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("position", position);
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    Log.v(TAG, "onStart");
    super.onStart();
  }
  
  protected void onStop()
  {
    Log.v(TAG, "onStop");
    super.onStop();
    position = brightcoveVideoView.getCurrentPosition();
    brightcoveVideoView.stopPlayback();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */