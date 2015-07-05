package com.ooyala.android;

import android.graphics.Color;
import android.os.Handler;
import android.widget.FrameLayout;
import java.util.Timer;

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
  protected final Handler _hideHandler = new Handler(new AbstractDefaultOoyalaPlayerControls.1(this));
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
        _hideTimer.schedule(new AbstractDefaultOoyalaPlayerControls.HideTimerTask(this), 5000L);
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
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */