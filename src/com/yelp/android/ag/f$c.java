package com.yelp.android.ag;

import android.os.Handler.Callback;
import android.os.Message;
import com.bumptech.glide.g;

class f$c
  implements Handler.Callback
{
  private f$c(f paramf) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      paramMessage = (f.a)obj;
      a.a(paramMessage);
      return true;
    }
    if (what == 2) {
      g.a((f.a)obj);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */