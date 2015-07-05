package com.ooyala.android;

import android.content.Context;
import android.graphics.Canvas;

public class AbstractDefaultOoyalaPlayerControls$PlayPauseButton
  extends AbstractDefaultOoyalaPlayerControls.TouchButton
{
  private boolean _playing = false;
  
  public AbstractDefaultOoyalaPlayerControls$PlayPauseButton(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls, Context paramContext)
  {
    super(paramAbstractDefaultOoyalaPlayerControls, paramContext);
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

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.PlayPauseButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */