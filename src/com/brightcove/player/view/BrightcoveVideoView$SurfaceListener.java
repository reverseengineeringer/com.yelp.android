package com.brightcove.player.view;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

class BrightcoveVideoView$SurfaceListener
  implements SurfaceHolder.Callback
{
  public BrightcoveVideoView$SurfaceListener(BrightcoveVideoView paramBrightcoveVideoView) {}
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d(BrightcoveVideoView.access$100(), "Surface changed to " + paramInt2 + ", " + paramInt3);
    this$0.videoDisplay.surfaceChanged(paramSurfaceHolder, paramInt1, paramInt2, paramInt3);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.d(BrightcoveVideoView.access$100(), "Surface created.");
    this$0.eventEmitter.emit("readyToPlay");
    this$0.videoDisplay.surfaceCreated(paramSurfaceHolder);
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d(BrightcoveVideoView.access$100(), "Surface destroyed.");
    this$0.videoDisplay.surfaceDestroyed(paramSurfaceHolder);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveVideoView.SurfaceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */