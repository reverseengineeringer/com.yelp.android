package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

public final class jn
  implements Handler.Callback
{
  private static final Object Nd = new Object();
  private static jn Ne;
  private final HashMap<String, jn.a> Nf = new HashMap();
  private final Handler mHandler = new Handler(paramContext.getMainLooper(), this);
  private final Context mO;
  
  private jn(Context paramContext)
  {
    mO = paramContext.getApplicationContext();
  }
  
  public static jn J(Context paramContext)
  {
    synchronized (Nd)
    {
      if (Ne == null) {
        Ne = new jn(paramContext.getApplicationContext());
      }
      return Ne;
    }
  }
  
  public boolean a(String paramString, jl<?>.f paramjl)
  {
    for (;;)
    {
      jn.a locala;
      synchronized (Nf)
      {
        locala = (jn.a)Nf.get(paramString);
        if (locala == null)
        {
          locala = new jn.a(this, paramString);
          locala.a(paramjl);
          locala.hA();
          Nf.put(paramString, locala);
          paramString = locala;
          boolean bool = paramString.isBound();
          return bool;
        }
        mHandler.removeMessages(0, locala);
        if (locala.c(paramjl)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + paramString);
        }
      }
      locala.a(paramjl);
      switch (locala.getState())
      {
      case 1: 
        paramjl.onServiceConnected(locala.getComponentName(), locala.getBinder());
        paramString = locala;
        break;
      case 2: 
        locala.hA();
        paramString = locala;
        break;
      default: 
        paramString = locala;
      }
    }
  }
  
  public void b(String paramString, jl<?>.f paramjl)
  {
    jn.a locala;
    synchronized (Nf)
    {
      locala = (jn.a)Nf.get(paramString);
      if (locala == null) {
        throw new IllegalStateException("Nonexistent connection status for service action: " + paramString);
      }
    }
    if (!locala.c(paramjl)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + paramString);
    }
    locala.b(paramjl);
    if (locala.hD())
    {
      paramString = mHandler.obtainMessage(0, locala);
      mHandler.sendMessageDelayed(paramString, 5000L);
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    jn.a locala = (jn.a)obj;
    synchronized (Nf)
    {
      if (locala.hD())
      {
        locala.hB();
        Nf.remove(locala.hC());
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */