package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

class c$c
  extends Handler
{
  c$c(c paramc, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.w("GoogleApiClientImpl", "Unknown message id: " + what);
      return;
    case 1: 
      c.i(Kn);
      return;
    }
    c.j(Kn);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */