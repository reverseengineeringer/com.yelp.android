package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class jl$f
  implements ServiceConnection
{
  public jl$f(jl paramjl) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    MQ.N(paramIBinder);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    MQ.mHandler.sendMessage(MQ.mHandler.obtainMessage(4, Integer.valueOf(1)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */