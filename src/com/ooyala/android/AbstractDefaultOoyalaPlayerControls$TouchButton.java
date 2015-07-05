package com.ooyala.android;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ImageButton;

public class AbstractDefaultOoyalaPlayerControls$TouchButton
  extends ImageButton
{
  protected boolean _touching = false;
  
  public AbstractDefaultOoyalaPlayerControls$TouchButton(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls, Context paramContext)
  {
    super(paramContext);
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

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.TouchButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */