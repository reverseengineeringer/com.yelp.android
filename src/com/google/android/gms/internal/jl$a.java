package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class jl$a
  extends Handler
{
  public jl$a(jl paramjl, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((what == 1) && (!MQ.isConnecting()))
    {
      paramMessage = (jl.b)obj;
      paramMessage.hx();
      paramMessage.unregister();
      return;
    }
    if (what == 3)
    {
      jl.a(MQ).b(new ConnectionResult(((Integer)obj).intValue(), null));
      return;
    }
    if (what == 4)
    {
      jl.a(MQ, 4, null);
      jl.a(MQ).aE(((Integer)obj).intValue());
      jl.a(MQ, 4, 1, null);
      return;
    }
    if ((what == 2) && (!MQ.isConnected()))
    {
      paramMessage = (jl.b)obj;
      paramMessage.hx();
      paramMessage.unregister();
      return;
    }
    if ((what == 2) || (what == 1))
    {
      ((jl.b)obj).hy();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */