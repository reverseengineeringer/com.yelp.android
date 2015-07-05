package com.ooyala.android;

import android.view.MotionEvent;
import android.widget.FrameLayout;

public abstract interface LayoutController
{
  public abstract FrameLayout getLayout();
  
  public abstract boolean isFullscreen();
  
  public abstract boolean onTouchEvent(MotionEvent paramMotionEvent, OoyalaPlayerLayout paramOoyalaPlayerLayout);
  
  public abstract void setFullscreen(boolean paramBoolean);
  
  public abstract void showClosedCaptionsMenu();
}

/* Location:
 * Qualified Name:     com.ooyala.android.LayoutController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */