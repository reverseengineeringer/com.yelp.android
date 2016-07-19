package com.ooyala.android;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.Set;

public class EmptyStreamPlayer
  extends StreamPlayer
{
  private void createView(Context paramContext)
  {
    _view = new MovieView(paramContext);
    _view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
    _view.setBackgroundColor(-16777216);
  }
  
  private void removeView()
  {
    if (_parent != null) {
      _parent.getLayout().removeView(_view);
    }
    _view = null;
  }
  
  private void setupView()
  {
    createView(_parent.getLayout().getContext());
    _parent.getLayout().addView(_view);
    ((MovieView)_view).setAspectRatio(1.7777778F);
    _view.getHolder().setType(3);
  }
  
  public void destroy()
  {
    removeView();
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    if (paramOoyalaPlayer == null)
    {
      _error = "Invalid Parent";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    setState(OoyalaPlayer.State.LOADING);
    setParent(paramOoyalaPlayer);
    setupView();
    setState(OoyalaPlayer.State.READY);
  }
  
  public void play()
  {
    switch (_state)
    {
    default: 
      return;
    }
    setState(OoyalaPlayer.State.PLAYING);
  }
  
  public void reset() {}
  
  public void resume() {}
  
  public void resume(int paramInt, OoyalaPlayer.State paramState) {}
  
  public void suspend() {}
  
  public void suspend(int paramInt, OoyalaPlayer.State paramState) {}
}

/* Location:
 * Qualified Name:     com.ooyala.android.EmptyStreamPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */