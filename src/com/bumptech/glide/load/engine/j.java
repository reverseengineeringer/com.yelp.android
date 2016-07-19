package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.yelp.android.ao.h;

class j
{
  private boolean a;
  private final Handler b = new Handler(Looper.getMainLooper(), new a(null));
  
  public void a(i<?> parami)
  {
    
    if (a)
    {
      b.obtainMessage(1, parami).sendToTarget();
      return;
    }
    a = true;
    parami.d();
    a = false;
  }
  
  private static class a
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
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */