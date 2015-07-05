package com.yelp.android.ak;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

final class f
  implements ServiceConnection
{
  boolean a = false;
  private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);
  
  public IBinder a()
  {
    if (a) {
      throw new IllegalStateException();
    }
    a = true;
    return (IBinder)b.take();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      b.put(paramIBinder);
      return;
    }
    catch (InterruptedException paramComponentName) {}
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */