package com.ooyala.android;

import android.app.Dialog;
import android.content.Context;

class OoyalaPlayerLayoutController$1
  extends Dialog
{
  OoyalaPlayerLayoutController$1(OoyalaPlayerLayoutController paramOoyalaPlayerLayoutController, Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public void onBackPressed()
  {
    if (this$0._player.isFullscreen())
    {
      this$0._player.setFullscreen(false);
      return;
    }
    super.onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayerLayoutController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */