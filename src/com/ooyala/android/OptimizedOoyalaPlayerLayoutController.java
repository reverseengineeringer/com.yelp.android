package com.ooyala.android;

import android.widget.FrameLayout.LayoutParams;

public class OptimizedOoyalaPlayerLayoutController
  extends AbstractOoyalaPlayerLayoutController
{
  private boolean _fullscreen = false;
  private FrameLayout.LayoutParams _fullscreenLP = new FrameLayout.LayoutParams(-1, -1, 119);
  private FrameLayout.LayoutParams _inlineLP = null;
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer)
  {
    this(paramOoyalaPlayerLayout, paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    super(paramOoyalaPlayerLayout, paramOoyalaPlayer, paramDefaultControlStyle);
    if (paramDefaultControlStyle == AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO)
    {
      _fullscreenControls = _inlineControls;
      _fullscreenOverlay = _inlineOverlay;
    }
    _inlineLP = ((FrameLayout.LayoutParams)_layout.getLayoutParams());
    _fullscreenLayout = _layout;
  }
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, paramDefaultControlStyle, null);
  }
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, new OoyalaPlayer(paramString1, paramString2, paramEmbedTokenGenerator), paramDefaultControlStyle);
  }
  
  public OptimizedOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO, paramEmbedTokenGenerator);
  }
  
  public boolean isFullscreen()
  {
    return _fullscreen;
  }
  
  public void setFullscreen(boolean paramBoolean)
  {
    if ((isFullscreen()) && (!paramBoolean))
    {
      _fullscreen = paramBoolean;
      _layout.setLayoutParams(_inlineLP);
    }
    while ((isFullscreen()) || (!paramBoolean)) {
      return;
    }
    _fullscreen = paramBoolean;
    _layout.setLayoutParams(_fullscreenLP);
    _layout.bringToFront();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OptimizedOoyalaPlayerLayoutController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */