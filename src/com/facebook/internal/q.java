package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

public abstract class q
  implements ServiceConnection
{
  private final Context a;
  private final Handler b;
  private a c;
  private boolean d;
  private Messenger e;
  private int f;
  private int g;
  private final String h;
  private final int i;
  
  public q(Context paramContext, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    Context localContext = paramContext.getApplicationContext();
    if (localContext != null) {
      paramContext = localContext;
    }
    a = paramContext;
    f = paramInt1;
    g = paramInt2;
    h = paramString;
    i = paramInt3;
    b = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        a(paramAnonymousMessage);
      }
    };
  }
  
  private void b(Bundle paramBundle)
  {
    if (!d) {}
    a locala;
    do
    {
      return;
      d = false;
      locala = c;
    } while (locala == null);
    locala.a(paramBundle);
  }
  
  private void c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.extra.APPLICATION_ID", h);
    a(localBundle);
    Message localMessage = Message.obtain(null, f);
    arg1 = i;
    localMessage.setData(localBundle);
    replyTo = new Messenger(b);
    try
    {
      e.send(localMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b(null);
    }
  }
  
  protected abstract void a(Bundle paramBundle);
  
  protected void a(Message paramMessage)
  {
    if (what == g)
    {
      paramMessage = paramMessage.getData();
      if (paramMessage.getString("com.facebook.platform.status.ERROR_TYPE") == null) {
        break label39;
      }
      b(null);
    }
    for (;;)
    {
      a.unbindService(this);
      return;
      label39:
      b(paramMessage);
    }
  }
  
  public void a(a parama)
  {
    c = parama;
  }
  
  public boolean a()
  {
    if (d) {}
    Intent localIntent;
    do
    {
      do
      {
        return false;
      } while (p.b(i) == -1);
      localIntent = p.a(a);
    } while (localIntent == null);
    d = true;
    a.bindService(localIntent, this, 1);
    return true;
  }
  
  public void b()
  {
    d = false;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    e = new Messenger(paramIBinder);
    c();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    e = null;
    try
    {
      a.unbindService(this);
      b(null);
      return;
    }
    catch (IllegalArgumentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(Bundle paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */