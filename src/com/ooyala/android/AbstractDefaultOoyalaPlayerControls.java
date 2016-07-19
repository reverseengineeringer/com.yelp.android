package com.ooyala.android;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import java.util.Timer;
import java.util.TimerTask;

public abstract class AbstractDefaultOoyalaPlayerControls
  implements OoyalaPlayerControls
{
  protected static final int BACKGROUND_COLOR = 0;
  protected static final int HIDE_AFTER_MILLIS = 5000;
  protected static final int MARGIN_SIZE_DP = 5;
  protected static final int PREFERRED_BUTTON_HEIGHT_DP = 35;
  protected static final int PREFERRED_BUTTON_WIDTH_DP = 40;
  protected static final int SOFT_WHITE_COLOR = Color.argb(245, 240, 240, 240);
  protected FrameLayout _baseLayout = null;
  protected final Handler _hideHandler = new Handler(new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      if (_player.isPlaying()) {
        hide();
      }
      return false;
    }
  });
  protected Timer _hideTimer = null;
  protected boolean _isPlayerReady = false;
  protected boolean _isVisible = true;
  protected OoyalaPlayerLayout _layout = null;
  protected OoyalaPlayer _player = null;
  
  public int bottomBarOffset()
  {
    return 0;
  }
  
  public void hide()
  {
    if ((_player != null) && (_isPlayerReady))
    {
      ClosedCaptionsStyle localClosedCaptionsStyle = _player.getClosedCaptionsStyle();
      if (localClosedCaptionsStyle != null)
      {
        localClosedCaptionsStyle.setBottomMargin(0);
        _player.setClosedCaptionsStyle(localClosedCaptionsStyle);
      }
    }
    if (_hideTimer != null)
    {
      _hideTimer.cancel();
      _hideTimer = null;
    }
    _baseLayout.setVisibility(8);
  }
  
  public boolean isShowing()
  {
    return _baseLayout.getVisibility() == 0;
  }
  
  public void setOoyalaPlayer(OoyalaPlayer paramOoyalaPlayer)
  {
    _player = paramOoyalaPlayer;
  }
  
  public void setParentLayout(OoyalaPlayerLayout paramOoyalaPlayerLayout)
  {
    _layout = paramOoyalaPlayerLayout;
  }
  
  public void setVisible(boolean paramBoolean)
  {
    _isVisible = paramBoolean;
    if (!paramBoolean) {
      hide();
    }
  }
  
  protected abstract void setupControls();
  
  public void show()
  {
    if (!_isVisible) {}
    ClosedCaptionsStyle localClosedCaptionsStyle;
    do
    {
      do
      {
        return;
        if (_hideTimer != null)
        {
          _hideTimer.cancel();
          _hideTimer = null;
        }
        _baseLayout.setVisibility(0);
        _baseLayout.bringToFront();
        updateButtonStates();
        _hideTimer = new Timer();
        _hideTimer.schedule(new HideTimerTask(), 5000L);
      } while ((_player == null) || (!_isPlayerReady));
      localClosedCaptionsStyle = _player.getClosedCaptionsStyle();
    } while (localClosedCaptionsStyle == null);
    localClosedCaptionsStyle.setBottomMargin(bottomBarOffset());
    _player.setClosedCaptionsStyle(localClosedCaptionsStyle);
  }
  
  public int topBarOffset()
  {
    return 0;
  }
  
  protected abstract void updateButtonStates();
  
  protected class ClosedCaptionsButton
    extends AbstractDefaultOoyalaPlayerControls.TouchButton
  {
    public ClosedCaptionsButton(Context paramContext)
    {
      super(paramContext);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      if (paramCanvas == null) {
        return;
      }
      Images.drawImage(6, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
    }
  }
  
  protected class FullscreenButton
    extends AbstractDefaultOoyalaPlayerControls.TouchButton
  {
    private boolean _fullscreen = false;
    
    public FullscreenButton(Context paramContext)
    {
      super(paramContext);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      if (paramCanvas == null) {
        return;
      }
      if (_fullscreen)
      {
        Images.drawImage(3, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
        return;
      }
      Images.drawImage(2, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
    }
    
    public void setFullscreen(boolean paramBoolean)
    {
      _fullscreen = paramBoolean;
      invalidate();
    }
  }
  
  protected class HideTimerTask
    extends TimerTask
  {
    protected HideTimerTask() {}
    
    public void run()
    {
      _hideHandler.sendEmptyMessage(0);
    }
  }
  
  protected class NextButton
    extends AbstractDefaultOoyalaPlayerControls.TouchButton
  {
    public NextButton(Context paramContext)
    {
      super(paramContext);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      if (paramCanvas == null) {
        return;
      }
      Images.drawImage(4, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
    }
  }
  
  protected class PlayPauseButton
    extends AbstractDefaultOoyalaPlayerControls.TouchButton
  {
    private boolean _playing = false;
    
    public PlayPauseButton(Context paramContext)
    {
      super(paramContext);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      if (paramCanvas == null) {
        return;
      }
      if (_playing)
      {
        Images.drawImage(1, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
        return;
      }
      Images.drawImage(0, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
    }
    
    public void setPlaying(boolean paramBoolean)
    {
      _playing = paramBoolean;
      invalidate();
    }
  }
  
  protected class PreviousButton
    extends AbstractDefaultOoyalaPlayerControls.TouchButton
  {
    public PreviousButton(Context paramContext)
    {
      super(paramContext);
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      if (paramCanvas == null) {
        return;
      }
      Images.drawImage(5, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
    }
  }
  
  protected class TouchButton
    extends ImageButton
  {
    protected boolean _touching = false;
    
    public TouchButton(Context paramContext)
    {
      super();
      setBackgroundDrawable(null);
    }
    
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      if (paramMotionEvent.getAction() == 0)
      {
        _touching = true;
        invalidate();
      }
      for (;;)
      {
        return super.onTouchEvent(paramMotionEvent);
        if (paramMotionEvent.getAction() == 1)
        {
          _touching = false;
          invalidate();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */