package com.ooyala.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import java.util.Set;

public abstract class AbstractOoyalaPlayerLayoutController
  implements LayoutController
{
  protected boolean _fullscreenButtonShowing = true;
  protected OoyalaPlayerControls _fullscreenControls = null;
  protected Dialog _fullscreenDialog = null;
  protected OoyalaPlayerLayout _fullscreenLayout = null;
  protected OoyalaPlayerControls _fullscreenOverlay = null;
  protected OoyalaPlayerControls _inlineControls = null;
  protected OoyalaPlayerControls _inlineOverlay = null;
  protected OoyalaPlayerLayout _layout = null;
  protected OoyalaPlayer _player = null;
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer)
  {
    this(paramOoyalaPlayerLayout, paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    _player = paramOoyalaPlayer;
    _layout = paramOoyalaPlayerLayout;
    _player.setLayoutController(this);
    _layout.setLayoutController(this);
    if (paramDefaultControlStyle == AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO)
    {
      setInlineControls(createDefaultControls(_layout, false));
      _inlineControls.hide();
      _player.addObserver(_inlineControls);
    }
  }
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    this(paramOoyalaPlayerLayout, new OoyalaPlayer(paramString1, paramString2), paramDefaultControlStyle);
  }
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, new OoyalaPlayer(paramString1, paramString2, paramEmbedTokenGenerator), paramDefaultControlStyle);
  }
  
  public AbstractOoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO, paramEmbedTokenGenerator);
  }
  
  public OoyalaPlayerControls createDefaultControls(OoyalaPlayerLayout paramOoyalaPlayerLayout, boolean paramBoolean)
  {
    if (paramBoolean) {
      return new DefaultOoyalaPlayerFullscreenControls(_player, paramOoyalaPlayerLayout);
    }
    return new DefaultOoyalaPlayerInlineControls(_player, paramOoyalaPlayerLayout);
  }
  
  public OoyalaPlayerControls getControls()
  {
    if (isFullscreen()) {
      return _fullscreenControls;
    }
    return _inlineControls;
  }
  
  public FrameLayout getLayout()
  {
    if (isFullscreen()) {
      return _fullscreenLayout.getPlayerFrame();
    }
    return _layout.getPlayerFrame();
  }
  
  public OoyalaPlayerControls getOverlay()
  {
    if (isFullscreen()) {
      return _fullscreenOverlay;
    }
    return _inlineOverlay;
  }
  
  public OoyalaPlayer getPlayer()
  {
    return _player;
  }
  
  public boolean isFullscreen()
  {
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent, OoyalaPlayerLayout paramOoyalaPlayerLayout)
  {
    if (_player != null) {
      switch (AbstractOoyalaPlayerLayoutController.2.$SwitchMap$com$ooyala$android$OoyalaPlayer$State[_player.getState().ordinal()])
      {
      default: 
        if (getControls() != null)
        {
          if (!getControls().isShowing()) {
            break label106;
          }
          getControls().hide();
        }
        break;
      }
    }
    for (;;)
    {
      if (getOverlay() != null)
      {
        if (!getOverlay().isShowing()) {
          break;
        }
        getOverlay().hide();
      }
      return false;
      label106:
      getControls().show();
    }
    getOverlay().show();
    return false;
  }
  
  public void setFullscreen(boolean paramBoolean) {}
  
  public void setFullscreenButtonShowing(boolean paramBoolean)
  {
    if (_inlineControls != null) {
      _inlineControls.setFullscreenButtonShowing(paramBoolean);
    }
    if (_fullscreenControls != null) {
      _fullscreenControls.setFullscreenButtonShowing(paramBoolean);
    }
    _fullscreenButtonShowing = paramBoolean;
  }
  
  public void setFullscreenControls(OoyalaPlayerControls paramOoyalaPlayerControls)
  {
    _fullscreenControls = paramOoyalaPlayerControls;
    _fullscreenControls.setFullscreenButtonShowing(_fullscreenButtonShowing);
  }
  
  public void setFullscreenOverlay(OoyalaPlayerControls paramOoyalaPlayerControls)
  {
    _fullscreenOverlay = paramOoyalaPlayerControls;
    _fullscreenOverlay.setOoyalaPlayer(_player);
  }
  
  public void setInlineControls(OoyalaPlayerControls paramOoyalaPlayerControls)
  {
    _inlineControls = paramOoyalaPlayerControls;
    _inlineControls.setFullscreenButtonShowing(_fullscreenButtonShowing);
  }
  
  public void setInlineOverlay(OoyalaPlayerControls paramOoyalaPlayerControls)
  {
    _inlineOverlay = paramOoyalaPlayerControls;
    _inlineOverlay.setOoyalaPlayer(_player);
  }
  
  public void showClosedCaptionsMenu()
  {
    Object localObject = _player.getAvailableClosedCaptionsLanguages();
    ((Set)localObject).add("None");
    localObject = (String[])((Set)localObject).toArray(new String[0]);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(_layout.getContext());
    localBuilder.setTitle("Subtitles/Closed Captions");
    localBuilder.setItems((CharSequence[])localObject, new AbstractOoyalaPlayerLayoutController.1(this, (String[])localObject));
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractOoyalaPlayerLayoutController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */