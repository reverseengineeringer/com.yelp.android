package com.ooyala.android;

import android.app.Dialog;
import android.content.Context;
import android.widget.FrameLayout.LayoutParams;

public class OoyalaPlayerLayoutController
  extends AbstractOoyalaPlayerLayoutController
{
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer)
  {
    this(paramOoyalaPlayerLayout, paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, OoyalaPlayer paramOoyalaPlayer, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    super(paramOoyalaPlayerLayout, paramOoyalaPlayer, paramDefaultControlStyle);
  }
  
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO);
  }
  
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, paramDefaultControlStyle, null);
  }
  
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle paramDefaultControlStyle, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, new OoyalaPlayer(paramString1, paramString2, paramEmbedTokenGenerator), paramDefaultControlStyle);
  }
  
  public OoyalaPlayerLayoutController(OoyalaPlayerLayout paramOoyalaPlayerLayout, String paramString1, String paramString2, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    this(paramOoyalaPlayerLayout, paramString1, paramString2, AbstractOoyalaPlayerLayoutController.DefaultControlStyle.AUTO, paramEmbedTokenGenerator);
  }
  
  public boolean isFullscreen()
  {
    return _fullscreenLayout != null;
  }
  
  public void setFullscreen(boolean paramBoolean)
  {
    Object localObject2 = null;
    OoyalaPlayerControls localOoyalaPlayerControls1 = null;
    Object localObject1 = null;
    _player.suspend();
    if ((isFullscreen()) && (!paramBoolean))
    {
      _fullscreenDialog.dismiss();
      _fullscreenDialog = null;
      _fullscreenControls = null;
      _fullscreenLayout = null;
      localObject2 = _inlineControls;
      if (_inlineOverlay != null)
      {
        _inlineOverlay.setParentLayout(_layout);
        localObject1 = _inlineOverlay;
      }
      if (_inlineControls != null) {
        _player.addObserver(_inlineControls);
      }
      if (_fullscreenControls != null) {
        _player.deleteObserver(_fullscreenControls);
      }
      _inlineControls.setVisible(true);
    }
    for (;;)
    {
      if (localObject2 != null) {
        ((OoyalaPlayerControls)localObject2).show();
      }
      if (localObject1 != null) {
        ((OoyalaPlayerControls)localObject1).show();
      }
      _player.resume();
      return;
      if ((!isFullscreen()) && (paramBoolean))
      {
        _fullscreenDialog = new Dialog(_layout.getContext(), 16973834)
        {
          public void onBackPressed()
          {
            if (_player.isFullscreen())
            {
              _player.setFullscreen(false);
              return;
            }
            super.onBackPressed();
          }
        };
        _fullscreenLayout = new OoyalaPlayerLayout(_fullscreenDialog.getContext());
        _fullscreenLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 119));
        _fullscreenLayout.setLayoutController(this);
        _fullscreenDialog.setContentView(_fullscreenLayout);
        _fullscreenDialog.show();
        _inlineControls.setVisible(false);
        setFullscreenControls(createDefaultControls(_fullscreenLayout, true));
        OoyalaPlayerControls localOoyalaPlayerControls2 = _fullscreenControls;
        if (_fullscreenOverlay != null)
        {
          _fullscreenOverlay.setParentLayout(_fullscreenLayout);
          localOoyalaPlayerControls1 = _fullscreenOverlay;
        }
        if (_inlineControls != null) {
          _player.deleteObserver(_inlineControls);
        }
        localObject1 = localOoyalaPlayerControls1;
        localObject2 = localOoyalaPlayerControls2;
        if (_fullscreenControls != null)
        {
          _player.addObserver(_fullscreenControls);
          localObject1 = localOoyalaPlayerControls1;
          localObject2 = localOoyalaPlayerControls2;
        }
      }
      else
      {
        localOoyalaPlayerControls1 = null;
        localObject1 = localObject2;
        localObject2 = localOoyalaPlayerControls1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayerLayoutController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */