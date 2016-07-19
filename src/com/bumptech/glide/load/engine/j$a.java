package com.bumptech.glide.load.engine;

import android.os.Handler.Callback;
import android.os.Message;

class j$a
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      ((i)obj).d();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */