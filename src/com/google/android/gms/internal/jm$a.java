package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;

final class jm$a
  extends Handler
{
  public jm$a(jm paramjm, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      synchronized (jm.a(Nc))
      {
        if ((jm.b(Nc).gN()) && (jm.b(Nc).isConnected()) && (jm.a(Nc).contains(obj)))
        {
          Bundle localBundle = jm.b(Nc).fX();
          ((GoogleApiClient.ConnectionCallbacks)obj).onConnected(localBundle);
        }
        return;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */