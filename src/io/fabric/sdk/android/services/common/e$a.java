package io.fabric.sdk.android.services.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class e$a
  implements ServiceConnection
{
  private boolean a = false;
  private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);
  
  public IBinder a()
  {
    if (a) {
      c.h().e("Fabric", "getBinder already called");
    }
    a = true;
    try
    {
      IBinder localIBinder = (IBinder)b.poll(200L, TimeUnit.MILLISECONDS);
      return localIBinder;
    }
    catch (InterruptedException localInterruptedException) {}
    return null;
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
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    b.clear();
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */