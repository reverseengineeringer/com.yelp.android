package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.BlockingQueue;

class a$1
  extends Handler
{
  a$1(a parama, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage == null) || (!(obj instanceof Intent))) {
      Log.w("GCM", "Dropping invalid message");
    }
    paramMessage = (Intent)obj;
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramMessage.getAction())) {
      a.a(a).add(paramMessage);
    }
    while (a.a(a, paramMessage)) {
      return;
    }
    paramMessage.setPackage(a.b(a).getPackageName());
    a.b(a).sendBroadcast(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */