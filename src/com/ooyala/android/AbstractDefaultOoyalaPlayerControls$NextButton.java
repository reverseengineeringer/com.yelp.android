package com.ooyala.android;

import android.content.Context;
import android.graphics.Canvas;

public class AbstractDefaultOoyalaPlayerControls$NextButton
  extends AbstractDefaultOoyalaPlayerControls.TouchButton
{
  public AbstractDefaultOoyalaPlayerControls$NextButton(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls, Context paramContext)
  {
    super(paramAbstractDefaultOoyalaPlayerControls, paramContext);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (paramCanvas == null) {
      return;
    }
    Images.drawImage(4, getContext(), paramCanvas, 0, AbstractDefaultOoyalaPlayerControls.SOFT_WHITE_COLOR, getWidth(), getHeight(), 5, _touching);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.NextButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */