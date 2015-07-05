package com.ooyala.android;

import android.content.Context;
import android.graphics.Canvas;

public class AbstractDefaultOoyalaPlayerControls$FullscreenButton
  extends AbstractDefaultOoyalaPlayerControls.TouchButton
{
  private boolean _fullscreen = false;
  
  public AbstractDefaultOoyalaPlayerControls$FullscreenButton(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls, Context paramContext)
  {
    super(paramAbstractDefaultOoyalaPlayerControls, paramContext);
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

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.FullscreenButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */