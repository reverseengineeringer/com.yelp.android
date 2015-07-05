package com.ooyala.android;

import android.os.Handler.Callback;
import android.os.Message;

class VisualOnStreamPlayer$1
  implements Handler.Callback
{
  VisualOnStreamPlayer$1(VisualOnStreamPlayer paramVisualOnStreamPlayer) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    VisualOnStreamPlayer.access$200(this$0);
    this$0.notifyObservers("timeChanged");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VisualOnStreamPlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */