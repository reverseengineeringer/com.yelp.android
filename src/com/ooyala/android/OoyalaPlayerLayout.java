package com.ooyala.android;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class OoyalaPlayerLayout
  extends FrameLayout
{
  private LayoutController _controller = null;
  protected FrameLayout _playerFrame = null;
  
  public OoyalaPlayerLayout(Context paramContext)
  {
    super(paramContext);
    setupPlayerFrame();
  }
  
  public OoyalaPlayerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setupPlayerFrame();
  }
  
  public OoyalaPlayerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setupPlayerFrame();
  }
  
  private void setupPlayerFrame()
  {
    _playerFrame = new FrameLayout(getContext());
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    addView(_playerFrame, localLayoutParams);
  }
  
  public LayoutController getLayoutController()
  {
    return _controller;
  }
  
  public FrameLayout getPlayerFrame()
  {
    return _playerFrame;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (_controller == null) {
      return false;
    }
    return _controller.onTouchEvent(paramMotionEvent, this);
  }
  
  public void setLayoutController(LayoutController paramLayoutController)
  {
    _controller = paramLayoutController;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */