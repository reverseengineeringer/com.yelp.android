package com.ooyala.android;

import android.os.Handler.Callback;
import android.os.Message;

class AbstractDefaultOoyalaPlayerControls$1
  implements Handler.Callback
{
  AbstractDefaultOoyalaPlayerControls$1(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if (this$0._player.isPlaying()) {
      this$0.hide();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */