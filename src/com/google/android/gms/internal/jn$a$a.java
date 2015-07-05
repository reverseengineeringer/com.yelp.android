package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

public class jn$a$a
  implements ServiceConnection
{
  public jn$a$a(jn.a parama) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (jn.a(Nn.Nm))
    {
      jn.a.a(Nn, paramIBinder);
      jn.a.a(Nn, paramComponentName);
      Iterator localIterator = jn.a.a(Nn).iterator();
      if (localIterator.hasNext()) {
        ((jl.f)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    jn.a.a(Nn, 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (jn.a(Nn.Nm))
    {
      jn.a.a(Nn, null);
      jn.a.a(Nn, paramComponentName);
      Iterator localIterator = jn.a.a(Nn).iterator();
      if (localIterator.hasNext()) {
        ((jl.f)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    jn.a.a(Nn, 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jn.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */