package com.bumptech.glide.load.engine;

import android.os.Handler.Callback;
import android.os.Message;

class c$b
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) || (2 == what))
    {
      c localc = (c)obj;
      if (1 == what) {
        c.a(localc);
      }
      for (;;)
      {
        return true;
        c.b(localc);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */